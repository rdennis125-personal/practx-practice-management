CREATE TABLE [apptremindersent] ( [ApptReminderSentNum] bigint NOT NULL IDENTITY(1,1),
[ApptNum] bigint NOT NULL,
[ApptDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TSPrior] bigint NOT NULL,
[ApptReminderRuleNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[SendStatus] tinyint NOT NULL,
[MessageType] tinyint NOT NULL,
[MessageFk] bigint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ResponseDescript] text NOT NULL,
CONSTRAINT PK_ApptReminderSentNum PRIMARY KEY ([ApptReminderSentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ApptNum] ON [apptremindersent] ([ApptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TSPrior] ON [apptremindersent] ([TSPrior]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptReminderRuleNum] ON [apptremindersent] ([ApptReminderRuleNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [apptremindersent] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [apptremindersent] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MessageFk] ON [apptremindersent] ([MessageFk]);