CREATE TABLE [payplancharge] ( [PayPlanChargeNum] bigint NOT NULL IDENTITY(1,1),
[PayPlanNum] bigint NOT NULL,
[Guarantor] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[ChargeDate] date NOT NULL DEFAULT '0001-01-01',
[Principal] FLOAT(53) NOT NULL DEFAULT 0,
[Interest] FLOAT(53) NOT NULL DEFAULT 0,
[Note] text DEFAULT NULL,
[ProvNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[ChargeType] tinyint NOT NULL,
[ProcNum] bigint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[StatementNum] bigint NOT NULL,
[FKey] bigint NOT NULL,
[LinkType] tinyint NOT NULL,
[IsOffset] tinyint NOT NULL,
CONSTRAINT PK_PayPlanChargeNum PRIMARY KEY ([PayPlanChargeNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [payplancharge] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexGuarantor] ON [payplancharge] ([Guarantor]);

GO
CREATE NONCLUSTERED INDEX [IX_indexPayPlanNum] ON [payplancharge] ([PayPlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [payplancharge] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [payplancharge] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_StatementNum] ON [payplancharge] ([StatementNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [payplancharge] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEditPN] ON [payplancharge]([SecDateTEdit],[PatNum]);