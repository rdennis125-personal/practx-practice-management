CREATE TABLE [question] ( [QuestionNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ItemOrder] smallint NOT NULL,
[Description] text DEFAULT NULL,
[Answer] text DEFAULT NULL,
[FormPatNum] bigint NOT NULL,
CONSTRAINT PK_QuestionNum PRIMARY KEY ([QuestionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [question] ([PatNum]);