CREATE TABLE [clockevent] ( [ClockEventNum] bigint NOT NULL IDENTITY(1,1),
[EmployeeNum] bigint NOT NULL,
[TimeEntered1] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TimeDisplayed1] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ClockStatus] tinyint NOT NULL DEFAULT 0,
[Note] text DEFAULT NULL,
[TimeEntered2] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TimeDisplayed2] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[OTimeHours] time NOT NULL,
[OTimeAuto] time NOT NULL,
[Adjust] time NOT NULL,
[AdjustAuto] time NOT NULL,
[AdjustIsOverridden] tinyint NOT NULL,
[Rate2Hours] time NOT NULL,
[Rate2Auto] time NOT NULL,
[ClinicNum] bigint NOT NULL,
[Rate3Hours] time NOT NULL,
[Rate3Auto] time NOT NULL,
[IsWorkingHome] tinyint NOT NULL,
CONSTRAINT PK_ClockEventNum PRIMARY KEY ([ClockEventNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_TimeDisplayed1] ON [clockevent] ([TimeDisplayed1]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [clockevent] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmployeeNum] ON [clockevent] ([EmployeeNum]);