CREATE TABLE [payplan] ( [PayPlanNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[Guarantor] bigint NOT NULL,
[PayPlanDate] date NOT NULL DEFAULT '0000-00-00',
[APR] FLOAT(53) NOT NULL DEFAULT 0,
[Note] text DEFAULT NULL,
[PlanNum] bigint NOT NULL,
[CompletedAmt] FLOAT(53) NOT NULL,
[InsSubNum] bigint NOT NULL,
[PaySchedule] tinyint NOT NULL,
[NumberOfPayments] int NOT NULL,
[PayAmt] FLOAT(53) NOT NULL,
[DownPayment] FLOAT(53) NOT NULL,
[IsClosed] tinyint NOT NULL,
[Signature] text NOT NULL,
[SigIsTopaz] tinyint NOT NULL,
[PlanCategory] bigint NOT NULL,
[IsDynamic] tinyint NOT NULL,
[ChargeFrequency] tinyint NOT NULL,
[DatePayPlanStart] date NOT NULL DEFAULT '0001-01-01',
[IsLocked] tinyint NOT NULL,
[DateInterestStart] date NOT NULL DEFAULT '0001-01-01',
[DynamicPayPlanTPOption] tinyint NOT NULL,
[MobileAppDeviceNum] bigint NOT NULL,
[SecurityHash] varchar(255) NOT NULL,
CONSTRAINT PK_PayPlanNum PRIMARY KEY ([PayPlanNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_InsSubNum] ON [payplan] ([InsSubNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PlanCategory] ON [payplan] ([PlanCategory]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [payplan] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_Guarantor] ON [payplan] ([Guarantor]);

GO
CREATE NONCLUSTERED INDEX [IX_PlanNum] ON [payplan] ([PlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MobileAppDeviceNum] ON [payplan] ([MobileAppDeviceNum]);