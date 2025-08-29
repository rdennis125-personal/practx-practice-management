CREATE TABLE [labcase] ( [LabCaseNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[LaboratoryNum] bigint NOT NULL,
[AptNum] bigint NOT NULL,
[PlannedAptNum] bigint NOT NULL,
[DateTimeDue] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeCreated] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeRecd] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeChecked] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ProvNum] bigint NOT NULL,
[Instructions] text DEFAULT NULL,
[LabFee] FLOAT(53) NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[InvoiceNum] varchar(255) NOT NULL,
CONSTRAINT PK_LabCaseNum PRIMARY KEY ([LabCaseNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexAptNum] ON [labcase] ([AptNum]);