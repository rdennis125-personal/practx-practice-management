CREATE TABLE [disease] ( [DiseaseNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DiseaseDefNum] bigint NOT NULL,
[PatNote] text DEFAULT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[ProbStatus] tinyint NOT NULL,
[DateStart] date NOT NULL DEFAULT '0001-01-01',
[DateStop] date NOT NULL DEFAULT '0001-01-01',
[SnomedProblemType] varchar(255) NOT NULL,
[FunctionStatus] tinyint NOT NULL,
CONSTRAINT PK_DiseaseNum PRIMARY KEY ([DiseaseNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [disease] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DiseaseDefNum] ON [disease] ([DiseaseDefNum]);