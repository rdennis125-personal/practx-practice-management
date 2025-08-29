CREATE TABLE [icd10] ( [Icd10Num] bigint NOT NULL IDENTITY(1,1),
[Icd10Code] varchar(255) NOT NULL,
[Description] varchar(255) NOT NULL,
[IsCode] varchar(255) NOT NULL,
CONSTRAINT PK_Icd10Num PRIMARY KEY ([Icd10Num])
);

GO
CREATE NONCLUSTERED INDEX [IX_Icd10Code] ON [icd10] ([Icd10Code]);