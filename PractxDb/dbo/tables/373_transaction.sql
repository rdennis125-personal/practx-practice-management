CREATE TABLE [transaction] ( [TransactionNum] bigint NOT NULL IDENTITY(1,1),
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[UserNum] bigint NOT NULL,
[DepositNum] bigint NOT NULL,
[PayNum] bigint NOT NULL,
[SecUserNumEdit] bigint NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[TransactionInvoiceNum] bigint NOT NULL,
CONSTRAINT PK_TransactionNum PRIMARY KEY ([TransactionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEdit] ON [transaction] ([SecUserNumEdit]);

GO
CREATE NONCLUSTERED INDEX [IX_TransactionInvoiceNum] ON [transaction] ([TransactionInvoiceNum]);