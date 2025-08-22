CREATE TABLE [evaluationdef] ( [EvaluationDefNum] bigint NOT NULL IDENTITY(1,1),
[SchoolCourseNum] bigint NOT NULL,
[EvalTitle] varchar(255) NOT NULL,
[GradingScaleNum] bigint NOT NULL,
CONSTRAINT PK_EvaluationDefNum PRIMARY KEY ([EvaluationDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SchoolCourseNum] ON [evaluationdef] ([SchoolCourseNum]);

GO
CREATE NONCLUSTERED INDEX [IX_GradingScaleNum] ON [evaluationdef] ([GradingScaleNum]);