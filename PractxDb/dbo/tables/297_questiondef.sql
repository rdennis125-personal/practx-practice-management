CREATE TABLE [questiondef] ( [QuestionDefNum] bigint NOT NULL IDENTITY(1,1),
[Description] text DEFAULT NULL,
[ItemOrder] smallint NOT NULL,
[QuestType] tinyint NOT NULL,
CONSTRAINT PK_QuestionDefNum PRIMARY KEY ([QuestionDefNum]) );