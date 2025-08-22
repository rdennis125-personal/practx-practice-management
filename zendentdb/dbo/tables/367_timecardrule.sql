CREATE TABLE [timecardrule] ( [TimeCardRuleNum] bigint NOT NULL IDENTITY(1,1),
[EmployeeNum] bigint NOT NULL,
[OverHoursPerDay] time NOT NULL,
[AfterTimeOfDay] time NOT NULL,
[BeforeTimeOfDay] time NOT NULL,
[IsOvertimeExempt] tinyint NOT NULL,
[MinClockInTime] time NOT NULL,
[HasWeekendRate3] tinyint NOT NULL,
CONSTRAINT PK_TimeCardRuleNum PRIMARY KEY ([TimeCardRuleNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EmployeeNum] ON [timecardrule] ([EmployeeNum]);