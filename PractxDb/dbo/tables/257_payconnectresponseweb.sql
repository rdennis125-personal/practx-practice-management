CREATE TABLE [payconnectresponseweb] ( [PayConnectResponseWebNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[PayNum] bigint NOT NULL,
[AccountToken] varchar(255) NOT NULL,
[PaymentToken] varchar(255) NOT NULL,
[ProcessingStatus] varchar(255) NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimePending] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeCompleted] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeExpired] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeLastError] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[LastResponseStr] text NOT NULL,
[CCSource] tinyint NOT NULL,
[Amount] FLOAT(53) NOT NULL,
[PayNote] varchar(255) NOT NULL,
[IsTokenSaved] tinyint NOT NULL,
[PayToken] varchar(255) NOT NULL,
[ExpDateToken] varchar(255) NOT NULL,
[RefNumber] varchar(255) NOT NULL,
[TransType] varchar(255) NOT NULL,
[EmailResponse] varchar(255) NOT NULL,
[LogGuid] varchar(36) DEFAULT NULL,
CONSTRAINT PK_PayConnectResponseWebNum PRIMARY KEY ([PayConnectResponseWebNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [payconnectresponseweb] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PayNum] ON [payconnectresponseweb] ([PayNum]);