CREATE TABLE [recurringcharge] ( [RecurringChargeNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[DateTimeCharge] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ChargeStatus] tinyint NOT NULL,
[FamBal] FLOAT(53) NOT NULL,
[PayPlanDue] FLOAT(53) NOT NULL,
[TotalDue] FLOAT(53) NOT NULL,
[RepeatAmt] FLOAT(53) NOT NULL,
[ChargeAmt] FLOAT(53) NOT NULL,
[UserNum] bigint NOT NULL,
[PayNum] bigint NOT NULL,
[CreditCardNum] bigint NOT NULL,
[ErrorMsg] text NOT NULL,
CONSTRAINT PK_RecurringChargeNum PRIMARY KEY ([RecurringChargeNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [recurringcharge] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [recurringcharge] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [recurringcharge] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PayNum] ON [recurringcharge] ([PayNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CreditCardNum] ON [recurringcharge] ([CreditCardNum]);