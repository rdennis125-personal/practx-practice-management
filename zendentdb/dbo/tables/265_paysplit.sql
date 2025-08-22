CREATE TABLE [paysplit] ( [SplitNum] bigint NOT NULL IDENTITY(1,1),
[SplitAmt] FLOAT(53) NOT NULL DEFAULT 0,
[PatNum] bigint NOT NULL,
[ProcDate] date NOT NULL DEFAULT '0000-00-00',
[PayNum] bigint NOT NULL,
[IsDiscount] tinyint NOT NULL DEFAULT 0,
[DiscountType] tinyint NOT NULL DEFAULT 0,
[ProvNum] bigint NOT NULL,
[PayPlanNum] bigint NOT NULL,
[DatePay] date NOT NULL DEFAULT '0001-01-01',
[ProcNum] bigint NOT NULL,
[DateEntry] date NOT NULL DEFAULT '0001-01-01',
[UnearnedType] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[FSplitNum] bigint NOT NULL,
[AdjNum] bigint NOT NULL,
[PayPlanChargeNum] bigint NOT NULL,
[PayPlanDebitType] tinyint NOT NULL,
[SecurityHash] varchar(255) NOT NULL,
CONSTRAINT PK_SplitNum PRIMARY KEY ([SplitNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [paysplit] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [paysplit] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PayNum] ON [paysplit] ([PayNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [paysplit] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DatePay] ON [paysplit] ([DatePay]);

GO
CREATE NONCLUSTERED INDEX [IX_PayPlanNum] ON [paysplit] ([PayPlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [paysplit] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_PrepaymentNum] ON [paysplit] ([FSplitNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexPNAmt] ON [paysplit] ([ProcNum],[SplitAmt]);

GO
CREATE NONCLUSTERED INDEX [IX_AdjNum] ON [paysplit] ([AdjNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PayPlanChargeNum] ON [paysplit] ([PayPlanChargeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [paysplit] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEditPN] ON [paysplit] ([SecDateTEdit],[PatNum]);