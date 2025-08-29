CREATE TABLE [msgtopaysent] ( [MsgToPaySentNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[SendStatus] tinyint NOT NULL,
[Source] tinyint NOT NULL,
[MessageType] tinyint NOT NULL,
[MessageFk] bigint NOT NULL,
[Subject] text NOT NULL,
[Message] text NOT NULL,
[EmailType] tinyint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ResponseDescript] text NOT NULL,
[ApptReminderRuleNum] bigint NOT NULL,
[ShortGUID] varchar(255) NOT NULL,
[DateTimeSendFailed] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_MsgToPaySentNum PRIMARY KEY ([MsgToPaySentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [msgtopaysent] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTimeSent] ON [msgtopaysent] ([DateTimeSent]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [msgtopaysent] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MessageFk] ON [msgtopaysent] ([MessageFk]);