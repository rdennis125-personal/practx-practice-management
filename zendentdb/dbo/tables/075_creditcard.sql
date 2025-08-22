CREATE TABLE [creditcard] ( [CreditCardNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[Address] varchar(255) DEFAULT NULL,
[Zip] varchar(255) DEFAULT NULL,
[XChargeToken] varchar(255) DEFAULT NULL,
[CCNumberMasked] varchar(255) DEFAULT NULL,
[CCExpiration] date NOT NULL DEFAULT '0001-01-01',
[ItemOrder] int NOT NULL,
[ChargeAmt] FLOAT(53) NOT NULL,
[DateStart] date NOT NULL DEFAULT '0001-01-01',
[DateStop] date NOT NULL DEFAULT '0001-01-01',
[Note] varchar(255) NOT NULL,
[PayPlanNum] bigint NOT NULL,
[PayConnectToken] varchar(255) NOT NULL,
[PayConnectTokenExp] date NOT NULL DEFAULT '0001-01-01',
[Procedures] text NOT NULL,
[CCSource] tinyint NOT NULL,
[ClinicNum] bigint NOT NULL,
[ExcludeProcSync] tinyint NOT NULL,
[PaySimpleToken] varchar(255) NOT NULL,
[ChargeFrequency] varchar(150) NOT NULL,
[CanChargeWhenNoBal] tinyint NOT NULL,
[PaymentType] bigint NOT NULL,
[IsRecurringActive] tinyint NOT NULL,
[Nickname] varchar(255) NOT NULL,
CONSTRAINT PK_CreditCardNum PRIMARY KEY ([CreditCardNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [creditcard] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PayPlanNum] ON [creditcard] ([PayPlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [creditcard] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PaymentType] ON [creditcard] ([PaymentType]);