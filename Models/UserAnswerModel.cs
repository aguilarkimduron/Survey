namespace Survey.API.Models
{
    public class UserAnswerModel
    {
        public int QuestionId { get; set; }
        public int QuestionNumber { get; set; }
        public string? Title { get; set; }
        public string? QuestionType { get; set; }
        public string? Answer { get; set; }
    }
}
