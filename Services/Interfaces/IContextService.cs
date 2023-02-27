namespace Survey.API.Services.Interfaces
{
    public interface IContextService<T>
    {
        public Task<List<T>> Execute(string sqlStatement);
    }
}
