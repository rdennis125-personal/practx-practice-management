CREATE TABLE [ehrcareplan] ( [EhrCarePlanNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[SnomedEducation] varchar(255) NOT NULL,
[Instructions] varchar(255) NOT NULL,
[DatePlanned] date NOT NULL DEFAULT '0001-01-01',
CONSTRAINT PK_EhrCarePlanNum PRIMARY KEY ([EhrCarePlanNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [ehrcareplan] ([PatNum]);