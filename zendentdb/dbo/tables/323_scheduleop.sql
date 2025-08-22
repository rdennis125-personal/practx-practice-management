CREATE TABLE [scheduleop] ( [ScheduleOpNum] bigint NOT NULL IDENTITY(1,1),
[ScheduleNum] bigint NOT NULL,
[OperatoryNum] bigint NOT NULL,
CONSTRAINT PK_ScheduleOpNum PRIMARY KEY ([ScheduleOpNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ScheduleNum] ON [scheduleop] ([ScheduleNum]);

GO
CREATE NONCLUSTERED INDEX [IX_OperatoryNum] ON [scheduleop] ([OperatoryNum]);