CREATE TABLE [evaluation] ( [EvaluationNum] bigint NOT NULL IDENTITY(1,1),
[InstructNum] bigint NOT NULL,
[StudentNum] bigint NOT NULL,
[SchoolCourseNum] bigint NOT NULL,
[EvalTitle] varchar(255) NOT NULL,
[DateEval] date NOT NULL DEFAULT '0001-01-01',
[GradingScaleNum] bigint NOT NULL,
[OverallGradeShowing] varchar(255) NOT NULL,
[OverallGradeNumber] float NOT NULL,
[Notes] text NOT NULL,
CONSTRAINT PK_EvaluationNum PRIMARY KEY ([EvaluationNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_InstructNum] ON [evaluation] ([InstructNum]);

GO
CREATE NONCLUSTERED INDEX [IX_StudentNum] ON [evaluation] ([StudentNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SchoolCourseNum] ON [evaluation] ([SchoolCourseNum]);

GO
CREATE NONCLUSTERED INDEX [IX_GradingScaleNum] ON [evaluation] ([GradingScaleNum]);