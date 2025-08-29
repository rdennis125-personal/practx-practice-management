CREATE TABLE [smsfrommobile] ( [SmsFromMobileNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[CommlogNum] bigint NOT NULL,
[MsgText] text NOT NULL,
[DateTimeReceived] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SmsPhoneNumber] varchar(255) NOT NULL,
[MobilePhoneNumber] varchar(255) NOT NULL,
[MsgPart] int NOT NULL,
[MsgTotal] int NOT NULL,
[MsgRefID] varchar(255) NOT NULL,
[SmsStatus] tinyint NOT NULL,
[Flags] varchar(255) NOT NULL,
[IsHidden] tinyint NOT NULL,
[MatchCount] int NOT NULL,
[GuidMessage] varchar(255) NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_SmsFromMobileNum PRIMARY KEY ([SmsFromMobileNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [smsfrommobile] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CommlogNum] ON [smsfrommobile] ([CommlogNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [smsfrommobile] ([SecDateTEdit]);

GO
CREATE NONCLUSTERED INDEX [IX_StatusHiddenClinic] ON [smsfrommobile] ([SmsStatus],[IsHidden],[ClinicNum]);