using Survey.API.Services.Interfaces;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;

namespace Survey.API.Services
{
    public class ContextService<T> : IContextService<T>
    {
        private readonly SqlConnection _connection;
        public ContextService(IConfiguration configuration) 
        {
            _connection = new SqlConnection(configuration.GetConnectionString("Survey"));
        }
        public async Task<List<T>> Execute(string sqlStatement)
        {
            try
            {
                var dt = new DataTable();
                using (var con = _connection)
                {
                    await con.OpenAsync();
                    var cmd = new SqlCommand(sqlStatement, con);
                    var reader = await cmd.ExecuteReaderAsync();
                    dt.Load(reader);
                    await con.CloseAsync();
                }

                List<T> entities = new List<T>(dt.Rows.Count);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow record in dt.Rows)
                    {
                        T item = GetItem<T>(record);
                        entities.Add(item);
                    }

                }
                return entities;
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        private T GetItem<T>(DataRow dr)
        {
            Type temp = typeof(T);
            T obj = Activator.CreateInstance<T>();

            foreach (DataColumn column in dr.Table.Columns)
            {
                foreach (PropertyInfo pro in temp.GetProperties())
                {
                    if (pro.Name == column.ColumnName)
                        pro.SetValue(obj, dr[column.ColumnName], null);
                    else
                        continue;
                }
            }
            return obj;
        }
    }
}
