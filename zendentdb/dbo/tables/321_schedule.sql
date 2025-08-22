CREATE TABLE [schedule] ( [ScheduleNum] bigint NOT NULL IDENTITY(1,1),
[SchedDate] date NOT NULL DEFAULT '0000-00-00',
[StartTime] time NOT NULL DEFAULT '00:00:00',
[StopTime] time NOT NULL DEFAULT '00:00:00',
[SchedType] tinyint NOT NULL DEFAULT 0,
[ProvNum] bigint NOT NULL,
[BlockoutType] bigint NOT NULL,
[Note] text DEFAULT NULL,
[Status] tinyint NOT NULL DEFAULT 0,
[EmployeeNum] bigint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[ClinicNum] bigint NOT NULL,
CONSTRAINT PK_ScheduleNum PRIMARY KEY ([ScheduleNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [schedule] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SchedDate] ON [schedule] ([SchedDate]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNumSchedType] ON [schedule]([ClinicNum],[SchedType]);

GO
CREATE NONCLUSTERED INDEX [IX_BlockoutType] ON [schedule] ([BlockoutType]);

GO
CREATE NONCLUSTERED INDEX [IX_EmpDateTypeStopTime] ON [schedule]([EmployeeNum],[SchedDate],[SchedType],[StopTime]);

--