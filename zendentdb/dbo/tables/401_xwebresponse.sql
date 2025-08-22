CREATE TABLE [xwebresponse] ( [XWebResponseNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[PaymentNum] bigint NOT NULL,
[DateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTUpdate] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TransactionStatus] tinyint NOT NULL,
[ResponseCode] int NOT NULL,
[XWebResponseCode] varchar(255) NOT NULL,
[ResponseDescription] varchar(255) NOT NULL,
[OTK] varchar(255) NOT NULL,
[HpfUrl] text NOT NULL,
[HpfExpiration] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TransactionID] varchar(255) NOT NULL,
[TransactionType] varchar(255) NOT NULL,
[Alias] varchar(255) NOT NULL,
[CardType] varchar(255) NOT NULL,
[CardBrand] varchar(255) NOT NULL,
[CardBrandShort] varchar(255) NOT NULL,
[MaskedAcctNum] varchar(255) NOT NULL,
[Amount] FLOAT(53) NOT NULL,
[ApprovalCode] varchar(255) NOT NULL,
[CardCodeResponse] varchar(255) NOT NULL,
[ReceiptID] int NOT NULL,
[ExpDate] varchar(255) NOT NULL,
[EntryMethod] varchar(255) NOT NULL,
[ProcessorResponse] varchar(255) NOT NULL,
[BatchNum] int NOT NULL,
[BatchAmount] FLOAT(53) NOT NULL,
[AccountExpirationDate] date NOT NULL DEFAULT '0001-01-01',
[DebugError] text NOT NULL,
[PayNote] text NOT NULL,
[CCSource] tinyint NOT NULL,
[OrderId] varchar(255) NOT NULL,
[EmailResponse] varchar(255) NOT NULL,
[LogGuid] varchar(36) DEFAULT NULL,
CONSTRAINT PK_XWebResponseNum PRIMARY KEY ([XWebResponseNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [xwebresponse] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [xwebresponse] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [xwebresponse] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PaymentNum] ON [xwebresponse] ([PaymentNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTUpdate] ON [xwebresponse] ([DateTUpdate]);