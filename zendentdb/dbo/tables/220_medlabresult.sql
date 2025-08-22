CREATE TABLE [medlabresult] ( [MedLabResultNum] bigint NOT NULL IDENTITY(1,1),
[MedLabNum] bigint NOT NULL,
[ObsID] varchar(255) NOT NULL,
[ObsText] varchar(255) NOT NULL,
[ObsLoinc] varchar(255) NOT NULL,
[ObsLoincText] varchar(255) NOT NULL,
[ObsIDSub] varchar(255) NOT NULL,
[ObsValue] text NOT NULL,
[ObsSubType] varchar(255) NOT NULL,
[ObsUnits] varchar(255) NOT NULL,
[ReferenceRange] varchar(255) NOT NULL,
[AbnormalFlag] varchar(255) NOT NULL,
[ResultStatus] varchar(255) NOT NULL,
[DateTimeObs] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[FacilityID] varchar(255) NOT NULL,
[DocNum] bigint NOT NULL,
[Note] text NOT NULL,
CONSTRAINT PK_MedLabResultNum PRIMARY KEY ([MedLabResultNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_MedLabNum] ON [medlabresult] ([MedLabNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DocNum] ON [medlabresult] ([DocNum]);