CREATE TABLE [ehrlabspecimencondition] ( [EhrLabSpecimenConditionNum] bigint NOT NULL IDENTITY(1,1),
[EhrLabSpecimenNum] bigint NOT NULL,
[SpecimenConditionID] varchar(255) NOT NULL,
[SpecimenConditionText] varchar(255) NOT NULL,
[SpecimenConditionCodeSystemName] varchar(255) NOT NULL,
[SpecimenConditionIDAlt] varchar(255) NOT NULL,
[SpecimenConditionTextAlt] varchar(255) NOT NULL,
[SpecimenConditionCodeSystemNameAlt] varchar(255) NOT NULL,
[SpecimenConditionTextOriginal] varchar(255) NOT NULL,
CONSTRAINT PK_EhrLabSpecimenConditionNum PRIMARY KEY ([EhrLabSpecimenConditionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EhrLabSpecimenNum] ON [ehrlabspecimencondition] ([EhrLabSpecimenNum]);