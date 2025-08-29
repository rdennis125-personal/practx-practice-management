CREATE TABLE [medlabspecimen] ( [MedLabSpecimenNum] bigint NOT NULL IDENTITY(1,1),
[MedLabNum] bigint NOT NULL,
[SpecimenID] varchar(255) NOT NULL,
[SpecimenDescript] varchar(255) NOT NULL,
[DateTimeCollected] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_MedLabSpecimenNum PRIMARY KEY ([MedLabSpecimenNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_MedLabNum] ON [medlabspecimen] ([MedLabNum]);