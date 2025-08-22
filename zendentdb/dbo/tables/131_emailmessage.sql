CREATE TABLE [emailmessage] ( [EmailMessageNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ToAddress] text DEFAULT NULL,
[FromAddress] text DEFAULT NULL,
[Subject] text DEFAULT NULL,
[BodyText] VARCHAR(MAX) NOT NULL,
[MsgDateTime] datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
[SentOrReceived] tinyint NOT NULL,
[RecipientAddress] varchar(255) NOT NULL,
[RawEmailIn] VARCHAR(MAX) NOT NULL,
[ProvNumWebMail] bigint NOT NULL,
[PatNumSubj] bigint NOT NULL,
[CcAddress] text NOT NULL,
[BccAddress] text NOT NULL,
[HideIn] tinyint NOT NULL,
[AptNum] bigint NOT NULL,
[UserNum] bigint NOT NULL,
[HtmlType] tinyint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[MsgType] varchar(255) NOT NULL,
[FailReason] varchar(255) NOT NULL,
CONSTRAINT PK_EmailMessageNum PRIMARY KEY ([EmailMessageNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [emailmessage] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNumWebMail] ON [emailmessage] ([ProvNumWebMail]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNumSubj] ON [emailmessage] ([PatNumSubj]);

GO
CREATE NONCLUSTERED INDEX [IX_AptNum] ON [emailmessage] ([AptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [emailmessage] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MsgBoxCompound] ON [emailmessage]([MsgDateTime],[SentOrReceived]);

GO
CREATE NONCLUSTERED INDEX [IX_SentOrReceived] ON [emailmessage] ([SentOrReceived]);

GO
CREATE NONCLUSTERED INDEX [IX_MsgHistoricAddresses] ON [emailmessage]([SentOrReceived],[RecipientAddress],[FromAddress]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEntry] ON [emailmessage] ([SecDateTEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [emailmessage] ([SecDateTEdit]);