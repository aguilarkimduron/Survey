using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Survey.API.Models;
using Survey.API.Services.Interfaces;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;

namespace Survey.API.Controllers
{
    
    public class SurveyController : BaseController
    {
        private readonly IContextService<UserAnswerModel> _userAnswerContext;
        public SurveyController(IContextService<UserAnswerModel> userAnswerContext)
        {
            _userAnswerContext = userAnswerContext;
        }

        [HttpGet]
        [Route("{userId:int}/{surveyId:int}")]
        public async Task<IActionResult> GetUserAnswers(int userId, int surveyId)
        {
            try
            {
                var userAnswers = await _userAnswerContext.Execute($"EXEC [dbo].[GetUserAnswers] @UserId={userId}, @SurveyId={surveyId}");
                return Ok(userAnswers);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

    }
}
