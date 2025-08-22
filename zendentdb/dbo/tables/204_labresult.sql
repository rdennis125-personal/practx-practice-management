CREATE TABLE [labresult] ( [LabResultNum] bigint NOT NULL IDENTITY(1,1),
[LabPanelNum] bigint NOT NULL,
[DateTimeTest] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TestName] varchar(255) NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[TestID] varchar(255) NOT NULL,
[ObsValue] varchar(255) NOT NULL,
[ObsUnits] varchar(255) NOT NULL,
[ObsRange] varchar(255) NOT NULL,
[AbnormalFlag] tinyint NOT NULL,
CONSTRAINT PK_LabResultNum PRIMARY KEY ([LabResultNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_LabPanelNum] ON [labresult] ([LabPanelNum]);