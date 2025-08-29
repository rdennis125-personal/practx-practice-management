CREATE TABLE [ehrlabclinicalinfo] ( [EhrLabClinicalInfoNum] bigint NOT NULL IDENTITY(1,1),
[EhrLabNum] bigint NOT NULL,
[ClinicalInfoID] varchar(255) NOT NULL,
[ClinicalInfoText] varchar(255) NOT NULL,
[ClinicalInfoCodeSystemName] varchar(255) NOT NULL,
[ClinicalInfoIDAlt] varchar(255) NOT NULL,
[ClinicalInfoTextAlt] varchar(255) NOT NULL,
[ClinicalInfoCodeSystemNameAlt] varchar(255) NOT NULL,
[ClinicalInfoTextOriginal] varchar(255) NOT NULL,
CONSTRAINT PK_EhrLabClinicalInfoNum PRIMARY KEY ([EhrLabClinicalInfoNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EhrLabNum] ON [ehrlabclinicalinfo] ([EhrLabNum]);