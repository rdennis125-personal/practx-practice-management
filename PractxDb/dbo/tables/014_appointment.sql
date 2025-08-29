CREATE TABLE [appointment] ( [AptNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[AptStatus] tinyint NOT NULL DEFAULT 0,
[Pattern] varchar(255) DEFAULT '',
[Confirmed] bigint NOT NULL,
[TimeLocked] tinyint NOT NULL,
[Op] bigint NOT NULL,
[Note] text DEFAULT NULL,
[ProvNum] bigint NOT NULL,
[ProvHyg] bigint NOT NULL,
[AptDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[NextAptNum] bigint NOT NULL,
[UnschedStatus] bigint NOT NULL,
[IsNewPatient] tinyint NOT NULL DEFAULT 0,
[ProcDescript] varchar(255) DEFAULT '',
[Assistant] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[IsHygiene] tinyint NOT NULL DEFAULT 0,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[DateTimeArrived] datetime NOT NULL,
[DateTimeSeated] datetime NOT NULL,
[DateTimeDismissed] datetime NOT NULL,
[InsPlan1] bigint NOT NULL,
[InsPlan2] bigint NOT NULL,
[DateTimeAskedToArrive] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ProcsColored] text NOT NULL,
[ColorOverride] int NOT NULL,
[AppointmentTypeNum] bigint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[Priority] tinyint NOT NULL,
[ProvBarText] varchar(60) NOT NULL,
[PatternSecondary] varchar(255) NOT NULL,
[SecurityHash] varchar(255) NOT NULL,
CONSTRAINT PK_AptNum PRIMARY KEY ([AptNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [appointment] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexNextAptNum] ON [appointment] ([NextAptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexProvNum] ON [appointment] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexProvHyg] ON [appointment] ([ProvHyg]);

GO
CREATE NONCLUSTERED INDEX [IX_indexAptDateTime] ON [appointment] ([AptDateTime]);

GO
CREATE NONCLUSTERED INDEX [IX_InsPlan1] ON [appointment] ([InsPlan1]);

GO
CREATE NONCLUSTERED INDEX [IX_InsPlan2] ON [appointment] ([InsPlan2]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTimeArrived] ON [appointment] ([DateTimeArrived]);

GO
CREATE NONCLUSTERED INDEX [IX_AppointmentTypeNum] ON [appointment] ([AppointmentTypeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_Op] ON [appointment] ([Op]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [appointment] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_StatusDate] ON [appointment]([AptStatus],[AptDateTime],[ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_Priority] ON [appointment] ([Priority]);

GO
CREATE NONCLUSTERED INDEX [IX_UnschedStatus] ON [appointment] ([UnschedStatus]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [appointment] ([ClinicNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 2);