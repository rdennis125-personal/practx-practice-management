CREATE TABLE [histappointment] ( [HistApptNum] bigint NOT NULL IDENTITY(1,1),
[HistUserNum] bigint NOT NULL,
[HistDateTStamp] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[HistApptAction] tinyint NOT NULL,
[ApptSource] tinyint NOT NULL,
[AptNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[AptStatus] tinyint NOT NULL,
[Pattern] varchar(255) NOT NULL,
[Confirmed] bigint NOT NULL,
[TimeLocked] tinyint NOT NULL,
[Op] bigint NOT NULL,
[Note] text NOT NULL,
[ProvNum] bigint NOT NULL,
[ProvHyg] bigint NOT NULL,
[AptDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[NextAptNum] bigint NOT NULL,
[UnschedStatus] bigint NOT NULL,
[IsNewPatient] tinyint NOT NULL,
[ProcDescript] varchar(255) NOT NULL,
[Assistant] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[IsHygiene] tinyint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[DateTimeArrived] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeSeated] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeDismissed] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
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
CONSTRAINT PK_HistApptNum PRIMARY KEY ([HistApptNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_HistUserNum] ON [histappointment] ([HistUserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_AptNum] ON [histappointment] ([AptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [histappointment] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_Confirmed] ON [histappointment] ([Confirmed]);

GO
CREATE NONCLUSTERED INDEX [IX_Op] ON [histappointment] ([Op]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [histappointment] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvHyg] ON [histappointment] ([ProvHyg]);

GO
CREATE NONCLUSTERED INDEX [IX_NextAptNum] ON [histappointment] ([NextAptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UnschedStatus] ON [histappointment] ([UnschedStatus]);

GO
CREATE NONCLUSTERED INDEX [IX_Assistant] ON [histappointment] ([Assistant]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [histappointment] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_InsPlan1] ON [histappointment] ([InsPlan1]);

GO
CREATE NONCLUSTERED INDEX [IX_InsPlan2] ON [histappointment] ([InsPlan2]);

GO
CREATE NONCLUSTERED INDEX [IX_AppointmentTypeNum] ON [histappointment] ([AppointmentTypeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [histappointment] ([SecUserNumEntry]);