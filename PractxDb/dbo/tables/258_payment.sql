CREATE TABLE [payment] ( [PayNum] bigint NOT NULL IDENTITY(1,1),
[PayType] bigint NOT NULL,
[PayDate] date NOT NULL DEFAULT '0000-00-00',
[PayAmt] FLOAT(53) NOT NULL DEFAULT 0,
[CheckNum] varchar(25) DEFAULT '',
[BankBranch] varchar(25) DEFAULT '',
[PayNote] text NOT NULL,
[IsSplit] tinyint NOT NULL DEFAULT 0,
[PatNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[DateEntry] date NOT NULL DEFAULT '0001-01-01',
[DepositNum] bigint NOT NULL,
[Receipt] text NOT NULL,
[IsRecurringCC] tinyint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[PaymentSource] tinyint NOT NULL,
[ProcessStatus] tinyint NOT NULL,
[RecurringChargeDate] date NOT NULL DEFAULT '0001-01-01',
[ExternalId] varchar(255) NOT NULL,
[PaymentStatus] tinyint NOT NULL,
[IsCcCompleted] tinyint NOT NULL,
[MerchantFee] FLOAT(53) NOT NULL,
CONSTRAINT PK_PayNum PRIMARY KEY ([PayNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [payment] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DepositNum] ON [payment] ([DepositNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [payment] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [payment] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PayType] ON [payment] ([PayType]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcessStatus] ON [payment] ([ProcessStatus]);