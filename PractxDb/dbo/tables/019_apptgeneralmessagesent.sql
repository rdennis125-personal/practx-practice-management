CREATE TABLE [apptgeneralmessagesent] ( [ApptGeneralMessageSentNum] bigint NOT NULL IDENTITY(1,1),
[ApptNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TSPrior] bigint NOT NULL,
[ApptReminderRuleNum] bigint NOT NULL,
[SendStatus] tinyint NOT NULL,
[ApptDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[MessageType] tinyint NOT NULL,
[MessageFk] bigint NOT NULL,
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ResponseDescript] text NOT NULL,
CONSTRAINT PK_ApptGeneralMessageSentNum PRIMARY KEY ([ApptGeneralMessageSentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ApptNum] ON [apptgeneralmessagesent] ([ApptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [apptgeneralmessagesent] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [apptgeneralmessagesent] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptReminderRuleNum] ON [apptgeneralmessagesent] ([ApptReminderRuleNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MessageFk] ON [apptgeneralmessagesent] ([MessageFk]);