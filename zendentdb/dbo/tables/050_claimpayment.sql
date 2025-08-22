CREATE TABLE [claimpayment] ( [ClaimPaymentNum] bigint NOT NULL IDENTITY(1,1),
[CheckDate] date NOT NULL DEFAULT '0001-01-01',
[CheckAmt] FLOAT(53) NOT NULL DEFAULT 0,
[CheckNum] varchar(25) DEFAULT '',
[BankBranch] varchar(25) DEFAULT '',
[Note] varchar(255) DEFAULT '',
[ClinicNum] bigint NOT NULL,
[DepositNum] bigint NOT NULL,
[CarrierName] varchar(255) DEFAULT '',
[DateIssued] date NOT NULL DEFAULT '0001-01-01',
[IsPartial] tinyint NOT NULL,
[PayType] bigint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[PayGroup] bigint NOT NULL,
CONSTRAINT PK_ClaimPaymentNum PRIMARY KEY ([ClaimPaymentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_DepositNum] ON [claimpayment] ([DepositNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PayType] ON [claimpayment] ([PayType]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [claimpayment] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_CheckDate] ON [claimpayment] ([CheckDate]);

GO
CREATE NONCLUSTERED INDEX [IX_PayGroup] ON [claimpayment] ([PayGroup]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [claimpayment] ([ClinicNum]);