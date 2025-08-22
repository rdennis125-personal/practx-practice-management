CREATE TABLE [webschedrecall] ( [WebSchedRecallNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[RecallNum] bigint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateDue] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ReminderCount] int NOT NULL,
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeSendFailed] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SendStatus] tinyint NOT NULL,
[ShortGUID] varchar(255) NOT NULL,
[ResponseDescript] text NOT NULL,
[Source] tinyint NOT NULL,
[CommlogNum] bigint NOT NULL,
[MessageType] tinyint NOT NULL,
[MessageFk] bigint NOT NULL,
[ApptReminderRuleNum] bigint NOT NULL,
CONSTRAINT PK_WebSchedRecallNum PRIMARY KEY ([WebSchedRecallNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [webschedrecall] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [webschedrecall] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_RecallNum] ON [webschedrecall] ([RecallNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTimeReminderSent] ON [webschedrecall] ([DateTimeSent]);

GO
CREATE NONCLUSTERED INDEX [IX_CommlogNum] ON [webschedrecall] ([CommlogNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MessageFk] ON [webschedrecall] ([MessageFk]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptReminderRuleNum] ON [webschedrecall] ([ApptReminderRuleNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTimeEntry] ON [webschedrecall] ([DateTimeEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_WebSchedRecallCovering] ON [webschedrecall] ([MessageType],[SendStatus],[ClinicNum]);