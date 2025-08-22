CREATE TABLE [medlab] ( [MedLabNum] bigint NOT NULL IDENTITY(1,1),
[SendingApp] varchar(255) NOT NULL,
[SendingFacility] varchar(255) NOT NULL,
[PatNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[PatIDLab] varchar(255) NOT NULL,
[PatIDAlt] varchar(255) NOT NULL,
[PatAge] varchar(255) NOT NULL,
[PatAccountNum] varchar(255) NOT NULL,
[PatFasting] tinyint NOT NULL,
[SpecimenID] varchar(255) NOT NULL,
[SpecimenIDFiller] varchar(255) NOT NULL,
[ObsTestID] varchar(255) NOT NULL,
[ObsTestDescript] varchar(255) NOT NULL,
[ObsTestLoinc] varchar(255) NOT NULL,
[ObsTestLoincText] varchar(255) NOT NULL,
[DateTimeCollected] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TotalVolume] varchar(255) NOT NULL,
[ActionCode] varchar(255) NOT NULL,
[ClinicalInfo] varchar(255) NOT NULL,
[DateTimeEntered] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[OrderingProvNPI] varchar(255) NOT NULL,
[OrderingProvLocalID] varchar(255) NOT NULL,
[OrderingProvLName] varchar(255) NOT NULL,
[OrderingProvFName] varchar(255) NOT NULL,
[SpecimenIDAlt] varchar(255) NOT NULL,
[DateTimeReported] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ResultStatus] varchar(255) NOT NULL,
[ParentObsID] varchar(255) NOT NULL,
[ParentObsTestID] varchar(255) NOT NULL,
[NotePat] text NOT NULL,
[NoteLab] text NOT NULL,
[FileName] varchar(255) NOT NULL,
[OriginalPIDSegment] text NOT NULL,
CONSTRAINT PK_MedLabNum PRIMARY KEY ([MedLabNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [medlab] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [medlab] ([ProvNum]);