CREATE TABLE [journalentry] ( [JournalEntryNum] bigint NOT NULL IDENTITY(1,1),
[TransactionNum] bigint NOT NULL,
[AccountNum] bigint NOT NULL,
[DateDisplayed] date NOT NULL DEFAULT '0001-01-01',
[DebitAmt] FLOAT(53) NOT NULL DEFAULT 0,
[CreditAmt] FLOAT(53) NOT NULL DEFAULT 0,
[Memo] text DEFAULT NULL,
[Splits] text DEFAULT NULL,
[CheckNumber] varchar(255) DEFAULT '',
[ReconcileNum] bigint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecUserNumEdit] bigint NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_JournalEntryNum PRIMARY KEY ([JournalEntryNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexAccountNum] ON [journalentry] ([AccountNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexTransactionNum] ON [journalentry] ([TransactionNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [journalentry] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEdit] ON [journalentry] ([SecUserNumEdit]);