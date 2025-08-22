CREATE TABLE [ehrlabspecimen] ( [EhrLabSpecimenNum] bigint NOT NULL IDENTITY(1,1),
[EhrLabNum] bigint NOT NULL,
[SetIdSPM] bigint NOT NULL,
[SpecimenTypeID] varchar(255) NOT NULL,
[SpecimenTypeText] varchar(255) NOT NULL,
[SpecimenTypeCodeSystemName] varchar(255) NOT NULL,
[SpecimenTypeIDAlt] varchar(255) NOT NULL,
[SpecimenTypeTextAlt] varchar(255) NOT NULL,
[SpecimenTypeCodeSystemNameAlt] varchar(255) NOT NULL,
[SpecimenTypeTextOriginal] varchar(255) NOT NULL,
[CollectionDateTimeStart] varchar(255) NOT NULL,
[CollectionDateTimeEnd] varchar(255) NOT NULL,
CONSTRAINT PK_EhrLabSpecimenNum PRIMARY KEY ([EhrLabSpecimenNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EhrLabNum] ON [ehrlabspecimen] ([EhrLabNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SetIdSPM] ON [ehrlabspecimen] ([SetIdSPM]);