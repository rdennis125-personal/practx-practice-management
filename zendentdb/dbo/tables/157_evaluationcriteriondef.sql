CREATE TABLE [evaluationcriteriondef] ( [EvaluationCriterionDefNum] bigint NOT NULL IDENTITY(1,1),
[EvaluationDefNum] bigint NOT NULL,
[CriterionDescript] varchar(255) NOT NULL,
[IsCategoryName] tinyint NOT NULL,
[GradingScaleNum] bigint NOT NULL,
[ItemOrder] int NOT NULL,
[MaxPointsPoss] float NOT NULL,
CONSTRAINT PK_EvaluationCriterionDefNum PRIMARY KEY ([EvaluationCriterionDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EvaluationDefNum] ON [evaluationcriteriondef] ([EvaluationDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_GradingScaleNum] ON [evaluationcriteriondef] ([GradingScaleNum]);