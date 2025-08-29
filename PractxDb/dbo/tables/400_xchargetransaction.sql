CREATE TABLE [xchargetransaction] ( [XChargeTransactionNum] bigint NOT NULL IDENTITY(1,1),
[TransType] varchar(255) NOT NULL,
[Amount] FLOAT(53) NOT NULL,
[CCEntry] varchar(255) NOT NULL,
[PatNum] bigint NOT NULL,
[Result] varchar(255) NOT NULL,
[ClerkID] varchar(255) NOT NULL,
[ResultCode] varchar(255) NOT NULL,
[Expiration] varchar(255) NOT NULL,
[CCType] varchar(255) NOT NULL,
[CreditCardNum] varchar(255) NOT NULL,
[BatchNum] varchar(255) NOT NULL,
[ItemNum] varchar(255) NOT NULL,
[ApprCode] varchar(255) NOT NULL,
[TransactionDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[BatchTotal] FLOAT(53) NOT NULL,
CONSTRAINT PK_XChargeTransactionNum PRIMARY KEY ([XChargeTransactionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [xchargetransaction] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TransactionDateTime] ON [xchargetransaction] ([TransactionDateTime]);