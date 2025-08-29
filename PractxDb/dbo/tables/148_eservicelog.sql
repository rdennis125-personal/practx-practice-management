CREATE TABLE [eservicelog] ( [EServiceLogNum] bigint NOT NULL IDENTITY(1,1),
[LogDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[PatNum] bigint NOT NULL,
[EServiceType] tinyint DEFAULT NULL,
[EServiceAction] smallint DEFAULT NULL,
[KeyType] smallint DEFAULT NULL,
[LogGuid] varchar(36) NOT NULL,
[ClinicNum] bigint DEFAULT NULL,
[FKey] bigint DEFAULT NULL,
[DateTimeUploaded] datetime NOT NULL DEFAULT '0001-01-01 12:00:00',
[Note] varchar(255) NOT NULL,
CONSTRAINT PK_EServiceLogNum PRIMARY KEY ([EServiceLogNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [eservicelog] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTimeUploaded] ON [eservicelog] ([DateTimeUploaded]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicDateTime] ON [eservicelog] ([ClinicNum],[LogDateTime]);