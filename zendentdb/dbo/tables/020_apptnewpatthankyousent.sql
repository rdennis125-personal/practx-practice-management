CREATE TABLE [apptnewpatthankyousent] ( [ApptNewPatThankYouSentNum] bigint NOT NULL IDENTITY(1,1),
[ApptNum] bigint NOT NULL,
[ApptDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ApptSecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TSPrior] bigint NOT NULL,
[ApptReminderRuleNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[ResponseDescript] text NOT NULL,
[DateTimeNewPatThankYouTransmit] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ShortGUID] varchar(255) NOT NULL,
[SendStatus] tinyint NOT NULL,
[MessageType] tinyint NOT NULL,
[MessageFk] bigint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_ApptNewPatThankYouSentNum PRIMARY KEY ([ApptNewPatThankYouSentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ApptNum] ON [apptnewpatthankyousent] ([ApptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TSPrior] ON [apptnewpatthankyousent] ([TSPrior]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptReminderRuleNum] ON [apptnewpatthankyousent] ([ApptReminderRuleNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [apptnewpatthankyousent] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [apptnewpatthankyousent] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MessageFk] ON [apptnewpatthankyousent] ([MessageFk]);