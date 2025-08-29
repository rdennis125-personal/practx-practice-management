CREATE TABLE [perioexam] ( [PerioExamNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ExamDate] date NOT NULL DEFAULT '0000-00-00',
[ProvNum] bigint NOT NULL,
[DateTMeasureEdit] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[Note] text NOT NULL,
CONSTRAINT PK_PerioExamNum PRIMARY KEY ([PerioExamNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [perioexam] ([PatNum]);