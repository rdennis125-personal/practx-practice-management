CREATE TABLE [diseasedef] ( [DiseaseDefNum] bigint NOT NULL IDENTITY(1,1),
[DiseaseName] varchar(255) DEFAULT '',
[ItemOrder] smallint NOT NULL,
[IsHidden] tinyint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[ICD9Code] varchar(255) NOT NULL,
[SnomedCode] varchar(255) NOT NULL,
[Icd10Code] varchar(255) NOT NULL,
CONSTRAINT PK_DiseaseDefNum PRIMARY KEY ([DiseaseDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ICD9Code] ON [diseasedef] ([ICD9Code]);

GO
CREATE NONCLUSTERED INDEX [IX_SnomedCode] ON [diseasedef] ([SnomedCode]);

GO
CREATE NONCLUSTERED INDEX [IX_Icd10Code] ON [diseasedef] ([Icd10Code]);

--DBCC CHECKIDENT ('tablename', RESEED, 6);