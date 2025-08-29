CREATE TABLE [scheduledprocess] ( [ScheduledProcessNum] bigint NOT NULL IDENTITY(1,1),
[ScheduledAction] varchar(50) NOT NULL,
[TimeToRun] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[FrequencyToRun] varchar(50) NOT NULL,
[LastRanDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_ScheduledProcessNum PRIMARY KEY ([ScheduledProcessNum]) );