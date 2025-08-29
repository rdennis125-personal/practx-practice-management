CREATE TABLE [confirmationrequest] ( [ConfirmationRequestNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[ApptNum] bigint NOT NULL,
[DateTimeConfirmExpire] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ShortGUID] varchar(255) NOT NULL,
[ConfirmCode] varchar(255) NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeConfirmTransmit] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeRSVP] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[RSVPStatus] tinyint NOT NULL,
[ResponseDescript] text NOT NULL,
[GuidMessageFromMobile] text NOT NULL,
[ApptDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TSPrior] bigint NOT NULL,
[DoNotResend] tinyint NOT NULL,
[SendStatus] tinyint NOT NULL,
[ApptReminderRuleNum] bigint NOT NULL,
[MessageType] tinyint NOT NULL,
[MessageFk] bigint NOT NULL,
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_ConfirmationRequestNum PRIMARY KEY ([ConfirmationRequestNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [confirmationrequest] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [confirmationrequest] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptNum] ON [confirmationrequest] ([ApptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TSPrior] ON [confirmationrequest] ([TSPrior]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptReminderRuleNum] ON [confirmationrequest] ([ApptReminderRuleNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MessageFk] ON [confirmationrequest] ([MessageFk]);