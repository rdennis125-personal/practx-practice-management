CREATE TABLE [timeadjust] ( [TimeAdjustNum] bigint NOT NULL IDENTITY(1,1),
[EmployeeNum] bigint NOT NULL,
[TimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[RegHours] time NOT NULL DEFAULT '00:00:00',
[OTimeHours] time NOT NULL DEFAULT '00:00:00',
[Note] text DEFAULT NULL,
[IsAuto] tinyint NOT NULL,
[ClinicNum] bigint NOT NULL,
[PtoDefNum] bigint NOT NULL DEFAULT 0,
[PtoHours] time NOT NULL DEFAULT '00:00:00',
[IsUnpaidProtectedLeave] tinyint NOT NULL DEFAULT 0,
[SecuUserNumEntry] bigint NOT NULL DEFAULT 0,
CONSTRAINT PK_TimeAdjustNum PRIMARY KEY ([TimeAdjustNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexEmployeeNum] ON [timeadjust] ([EmployeeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [timeadjust] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PtoDefNum] ON [timeadjust] ([PtoDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecuUserNumEntry] ON [timeadjust] ([SecuUserNumEntry]);