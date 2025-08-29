CREATE TABLE [installmentplan] ( [InstallmentPlanNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateAgreement] date NOT NULL DEFAULT '0001-01-01',
[DateFirstPayment] date NOT NULL DEFAULT '0001-01-01',
[MonthlyPayment] FLOAT(53) NOT NULL,
[APR] float NOT NULL,
[Note] varchar(255) NOT NULL,
CONSTRAINT PK_InstallmentPlanNum PRIMARY KEY ([InstallmentPlanNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [installmentplan] ([PatNum]);