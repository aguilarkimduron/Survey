# SQL Scripts

USE [Survey]
GO
/****** Object:  Table [dbo].[QuestionOptions]    Script Date: 2/27/2023 10:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionOptions](
	[QuestionOptionId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Value] [varchar](250) NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 2/27/2023 10:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NOT NULL,
	[Description] [varchar](200) NULL,
	[QuestionTypeId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionTypes]    Script Date: 2/27/2023 10:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionTypes](
	[QuestionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](150) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyFormQuestions]    Script Date: 2/27/2023 10:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyFormQuestions](
	[SurveyFormQuestionId] [int] IDENTITY(1,1) NOT NULL,
	[SurveyFormId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[QuestionNumber] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SurveyFormQuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyForms]    Script Date: 2/27/2023 10:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyForms](
	[SurveyFormId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SurveyFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAnswers]    Script Date: 2/27/2023 10:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAnswers](
	[UserAnswer] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[SurveyFormQuestionId] [int] NOT NULL,
	[Answer] [varchar](250) NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserAnswer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/27/2023 10:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](150) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSurveyForms]    Script Date: 2/27/2023 10:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSurveyForms](
	[UserSurveyFormId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[SurveyFormId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserSurveyFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[QuestionOptions] ON 
GO
INSERT [dbo].[QuestionOptions] ([QuestionOptionId], [QuestionId], [Value], [CreatedDate]) VALUES (1, 3, N'Male', CAST(N'2023-02-27T21:18:16.493' AS DateTime))
GO
INSERT [dbo].[QuestionOptions] ([QuestionOptionId], [QuestionId], [Value], [CreatedDate]) VALUES (2, 3, N'Female', CAST(N'2023-02-27T21:18:16.493' AS DateTime))
GO
INSERT [dbo].[QuestionOptions] ([QuestionOptionId], [QuestionId], [Value], [CreatedDate]) VALUES (3, 4, N'no work experience', CAST(N'2023-02-27T21:19:43.743' AS DateTime))
GO
INSERT [dbo].[QuestionOptions] ([QuestionOptionId], [QuestionId], [Value], [CreatedDate]) VALUES (4, 4, N'1 - 2 years', CAST(N'2023-02-27T21:19:43.743' AS DateTime))
GO
INSERT [dbo].[QuestionOptions] ([QuestionOptionId], [QuestionId], [Value], [CreatedDate]) VALUES (5, 4, N'3 - 5 years', CAST(N'2023-02-27T21:19:43.743' AS DateTime))
GO
INSERT [dbo].[QuestionOptions] ([QuestionOptionId], [QuestionId], [Value], [CreatedDate]) VALUES (6, 4, N'5 - 10 years', CAST(N'2023-02-27T21:19:43.743' AS DateTime))
GO
INSERT [dbo].[QuestionOptions] ([QuestionOptionId], [QuestionId], [Value], [CreatedDate]) VALUES (7, 4, N'more than 10 years', CAST(N'2023-02-27T21:19:43.743' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[QuestionOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 
GO
INSERT [dbo].[Questions] ([QuestionId], [Title], [Description], [QuestionTypeId], [CreatedDate]) VALUES (1, N'What is your name?', N'Please input your fullname.', 2, CAST(N'2023-02-27T21:00:07.930' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Title], [Description], [QuestionTypeId], [CreatedDate]) VALUES (2, N'What are your hobbies?', N'In a paragraph please indicate all your hobbies.', 1, CAST(N'2023-02-27T21:00:07.930' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Title], [Description], [QuestionTypeId], [CreatedDate]) VALUES (3, N'What is your Gender?', N'Please select your gender.', 3, CAST(N'2023-02-27T21:00:07.930' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Title], [Description], [QuestionTypeId], [CreatedDate]) VALUES (4, N'How many work experience?', N'Please select how many work experience do you currently have.', 4, CAST(N'2023-02-27T21:00:07.930' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionTypes] ON 
GO
INSERT [dbo].[QuestionTypes] ([QuestionTypeId], [Type], [CreatedDate]) VALUES (1, N'TEXT_AREA', CAST(N'2023-02-27T20:52:38.670' AS DateTime))
GO
INSERT [dbo].[QuestionTypes] ([QuestionTypeId], [Type], [CreatedDate]) VALUES (2, N'TEXT_BOX', CAST(N'2023-02-27T20:52:38.670' AS DateTime))
GO
INSERT [dbo].[QuestionTypes] ([QuestionTypeId], [Type], [CreatedDate]) VALUES (3, N'CHECKBOX', CAST(N'2023-02-27T20:52:38.670' AS DateTime))
GO
INSERT [dbo].[QuestionTypes] ([QuestionTypeId], [Type], [CreatedDate]) VALUES (4, N'DROPDOWN_LIST', CAST(N'2023-02-27T20:52:38.670' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[QuestionTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[SurveyFormQuestions] ON 
GO
INSERT [dbo].[SurveyFormQuestions] ([SurveyFormQuestionId], [SurveyFormId], [QuestionId], [QuestionNumber], [CreatedDate]) VALUES (1, 1, 1, 1, CAST(N'2023-02-27T21:01:41.160' AS DateTime))
GO
INSERT [dbo].[SurveyFormQuestions] ([SurveyFormQuestionId], [SurveyFormId], [QuestionId], [QuestionNumber], [CreatedDate]) VALUES (2, 1, 2, 2, CAST(N'2023-02-27T21:01:41.160' AS DateTime))
GO
INSERT [dbo].[SurveyFormQuestions] ([SurveyFormQuestionId], [SurveyFormId], [QuestionId], [QuestionNumber], [CreatedDate]) VALUES (3, 1, 3, 3, CAST(N'2023-02-27T21:01:41.160' AS DateTime))
GO
INSERT [dbo].[SurveyFormQuestions] ([SurveyFormQuestionId], [SurveyFormId], [QuestionId], [QuestionNumber], [CreatedDate]) VALUES (4, 1, 4, 4, CAST(N'2023-02-27T21:01:41.160' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SurveyFormQuestions] OFF
GO
SET IDENTITY_INSERT [dbo].[SurveyForms] ON 
GO
INSERT [dbo].[SurveyForms] ([SurveyFormId], [Title], [CreatedDate]) VALUES (1, N'Sample Survey', CAST(N'2023-02-27T20:53:32.387' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SurveyForms] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAnswers] ON 
GO
INSERT [dbo].[UserAnswers] ([UserAnswer], [UserId], [SurveyFormQuestionId], [Answer], [CreatedDate]) VALUES (1, 1, 1, N'Kim Aguilar', CAST(N'2023-02-27T21:14:15.050' AS DateTime))
GO
INSERT [dbo].[UserAnswers] ([UserAnswer], [UserId], [SurveyFormQuestionId], [Answer], [CreatedDate]) VALUES (2, 1, 2, N'Playing video games', CAST(N'2023-02-27T21:14:15.050' AS DateTime))
GO
INSERT [dbo].[UserAnswers] ([UserAnswer], [UserId], [SurveyFormQuestionId], [Answer], [CreatedDate]) VALUES (3, 1, 3, N'Male', CAST(N'2023-02-27T21:14:15.050' AS DateTime))
GO
INSERT [dbo].[UserAnswers] ([UserAnswer], [UserId], [SurveyFormQuestionId], [Answer], [CreatedDate]) VALUES (4, 1, 4, N'1 - 2 years', CAST(N'2023-02-27T21:14:15.050' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserAnswers] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserId], [UserName], [CreatedDate]) VALUES (1, N'Kim_Aguilar', CAST(N'2023-02-27T20:49:39.430' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[UserSurveyForms] ON 
GO
INSERT [dbo].[UserSurveyForms] ([UserSurveyFormId], [UserId], [SurveyFormId], [CreatedDate]) VALUES (1, 1, 1, CAST(N'2023-02-27T20:55:17.337' AS DateTime))
GO
INSERT [dbo].[UserSurveyForms] ([UserSurveyFormId], [UserId], [SurveyFormId], [CreatedDate]) VALUES (2, 2, 1, CAST(N'2023-02-27T20:55:17.337' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserSurveyForms] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SurveyFo__2CB664DC6FE61E69]    Script Date: 2/27/2023 10:20:33 PM ******/
ALTER TABLE [dbo].[SurveyForms] ADD UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__C9F28456664BF7E9]    Script Date: 2/27/2023 10:20:33 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QuestionOptions] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Questions] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[Questions] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[QuestionTypes] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SurveyFormQuestions] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SurveyForms] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserAnswers] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserSurveyForms] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[GetUserAnswers]    Script Date: 2/27/2023 10:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
--QUESTIONID,NUMBER, TITLE, QUESTIONTYPE, ANSWER
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- ============================================= exec [dbo].[GetUserAnswers] @UserId=2, @SurveyId=1
CREATE PROCEDURE [dbo].[GetUserAnswers]
	@UserId INT,
	@SurveyId INT
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT 
		sfq.QuestionId,
		sfq.QuestionNumber,
		q.Title,
		qt.[Type] AS QuestionType,
		ISNULL(ua.Answer, 'No Answer') AS Answer
		--usf.*, sfq.*, q.*, qt.*, ua.*
	FROM [dbo].[UserSurveyForms] usf
	 LEFT JOIN [dbo].[SurveyFormQuestions] sfq
		 ON usf.SurveyFormId = sfq.SurveyFormId
	 LEFT JOIN [dbo].[Questions] q
		 ON sfq.QuestionId = q.QuestionId
	 LEFT JOIN [dbo].[QuestionTypes] qt
		 ON q.QuestionTypeId = qt.QuestionTypeId
	 LEFT JOIN [dbo].[UserAnswers] ua
		 ON ua.SurveyFormQuestionId = sfq.SurveyFormQuestionId
		 AND usf.UserId = ua.UserId
	WHERE usf.UserId = @UserId
	AND usf.SurveyFormId = @SurveyId
	 ORDER BY sfq.QuestionNumber ASC

   
END
GO
