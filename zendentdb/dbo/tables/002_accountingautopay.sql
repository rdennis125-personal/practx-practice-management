CREATE TABLE [accountingautopay] ( [AccountingAutoPayNum] bigint NOT NULL IDENTITY(1,1),
[PayType] bigint NOT NULL,
[PickList] varchar(255) DEFAULT '',
CONSTRAINT PK_AccountingAutoPayNum PRIMARY KEY ([AccountingAutoPayNum]) );