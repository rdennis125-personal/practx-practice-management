CREATE TABLE [payplantemplate] ( [PayPlanTemplateNum] bigint NOT NULL IDENTITY(1,1),
[PayPlanTemplateName] varchar(255) NOT NULL,
[ClinicNum] bigint NOT NULL,
[APR] FLOAT(53) NOT NULL,
[InterestDelay] int NOT NULL,
[PayAmt] FLOAT(53) NOT NULL,
[NumberOfPayments] int NOT NULL,
[ChargeFrequency] tinyint NOT NULL,
[DownPayment] FLOAT(53) NOT NULL,
[DynamicPayPlanTPOption] tinyint NOT NULL,
[Note] varchar(255) NOT NULL,
[IsHidden] tinyint NOT NULL,
CONSTRAINT PK_PayPlanTemplateNum PRIMARY KEY ([PayPlanTemplateNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [payplantemplate] ([ClinicNum]);