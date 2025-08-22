CREATE TABLE [deposit] ( [DepositNum] bigint NOT NULL IDENTITY(1,1),
[DateDeposit] date NOT NULL DEFAULT '0001-01-01',
[BankAccountInfo] text DEFAULT NULL,
[Amount] FLOAT(53) NOT NULL DEFAULT 0,
[Memo] varchar(255) NOT NULL,
[Batch] varchar(25) NOT NULL,
[DepositAccountNum] bigint NOT NULL,
[IsSentToQuickBooksOnline] tinyint NOT NULL,
CONSTRAINT PK_DepositNum PRIMARY KEY ([DepositNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_DepositAccountNum] ON [deposit] ([DepositAccountNum]);