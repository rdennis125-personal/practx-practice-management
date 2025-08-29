CREATE TABLE [smstomobile] ( [SmsToMobileNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[GuidMessage] varchar(255) NOT NULL,
[GuidBatch] varchar(255) NOT NULL,
[SmsPhoneNumber] varchar(255) NOT NULL,
[MobilePhoneNumber] varchar(255) NOT NULL,
[IsTimeSensitive] tinyint NOT NULL,
[MsgType] tinyint NOT NULL,
[MsgText] text NOT NULL,
[SmsStatus] tinyint NOT NULL,
[MsgParts] int NOT NULL,
[MsgChargeUSD] float NOT NULL,
[ClinicNum] bigint NOT NULL,
[CustErrorText] varchar(255) NOT NULL,
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeTerminated] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[IsHidden] tinyint NOT NULL,
[MsgDiscountUSD] float NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_SmsToMobileNum PRIMARY KEY ([SmsToMobileNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [smstomobile] ([PatNum]);

GO
--CREATE NONCLUSTERED INDEX [IX_ClinicDTSent] ON [smstomobile] ([ClinicNum]${5:+,[DateTimeSent]}));
CREATE NONCLUSTERED INDEX [IX_ClinicDTSent] ON [smstomobile] ([ClinicNum],[DateTimeSent]);
GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [smstomobile] ([SecDateTEdit]);

GO
CREATE NONCLUSTERED INDEX [IX_GuidMessage] ON [smstomobile] ([GuidMessage]);