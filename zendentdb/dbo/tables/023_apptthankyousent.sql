CREATE TABLE [apptthankyousent] ( [ApptThankYouSentNum] bigint NOT NULL IDENTITY(1,1),
[ApptNum] bigint NOT NULL,
[ApptDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ApptSecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TSPrior] bigint NOT NULL,
[ApptReminderRuleNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[ResponseDescript] text NOT NULL,
[DateTimeThankYouTransmit] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ShortGUID] varchar(255) NOT NULL,
[SendStatus] tinyint NOT NULL,
[DoNotResend] tinyint NOT NULL,
[MessageType] tinyint NOT NULL,
[MessageFk] bigint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_ApptThankYouSentNum PRIMARY KEY ([ApptThankYouSentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ApptNum] ON [apptthankyousent] ([ApptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TSPrior] ON [apptthankyousent] ([TSPrior]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptReminderRuleNum] ON [apptthankyousent] ([ApptReminderRuleNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [apptthankyousent] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [apptthankyousent] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptDateTime] ON [apptthankyousent] ([ApptDateTime]);

GO
CREATE NONCLUSTERED INDEX [IX_MessageFk] ON [apptthankyousent] ([MessageFk]);