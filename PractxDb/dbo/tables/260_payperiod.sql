CREATE TABLE [payperiod] ( [PayPeriodNum] bigint NOT NULL IDENTITY(1,1),
[DateStart] date NOT NULL DEFAULT '0001-01-01',
[DateStop] date NOT NULL DEFAULT '0001-01-01',
[DatePaycheck] date NOT NULL DEFAULT '0001-01-01',
CONSTRAINT PK_PayPeriodNum PRIMARY KEY ([PayPeriodNum]) );