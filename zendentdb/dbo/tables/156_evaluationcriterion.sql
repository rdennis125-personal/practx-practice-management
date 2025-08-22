CREATE TABLE [evaluationcriterion] ( [EvaluationCriterionNum] bigint NOT NULL IDENTITY(1,1),
[EvaluationNum] bigint NOT NULL,
[CriterionDescript] varchar(255) NOT NULL,
[IsCategoryName] tinyint NOT NULL,
[GradingScaleNum] bigint NOT NULL,
[GradeShowing] varchar(255) NOT NULL,
[GradeNumber] float NOT NULL,
[Notes] text NOT NULL,
[ItemOrder] int NOT NULL,
[MaxPointsPoss] float NOT NULL,
CONSTRAINT PK_EvaluationCriterionNum PRIMARY KEY ([EvaluationCriterionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EvaluationNum] ON [evaluationcriterion] ([EvaluationNum]);

GO
CREATE NONCLUSTERED INDEX [IX_GradingScaleNum] ON [evaluationcriterion] ([GradingScaleNum]);