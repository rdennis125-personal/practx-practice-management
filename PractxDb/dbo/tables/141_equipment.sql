CREATE TABLE [equipment] ( [EquipmentNum] bigint NOT NULL IDENTITY(1,1),
[Description] text NOT NULL,
[SerialNumber] varchar(255) DEFAULT NULL,
[ModelYear] varchar(2) DEFAULT NULL,
[DatePurchased] date NOT NULL DEFAULT '0001-01-01',
[DateSold] date NOT NULL DEFAULT '0001-01-01',
[PurchaseCost] FLOAT(53) NOT NULL,
[MarketValue] FLOAT(53) NOT NULL,
[Location] text NOT NULL,
[DateEntry] date NOT NULL DEFAULT '0001-01-01',
[ProvNumCheckedOut] bigint NOT NULL,
[DateCheckedOut] date NOT NULL DEFAULT '0001-01-01',
[DateExpectedBack] date NOT NULL DEFAULT '0001-01-01',
[DispenseNote] text NOT NULL,
[Status] text NOT NULL,
CONSTRAINT PK_EquipmentNum PRIMARY KEY ([EquipmentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNumCheckedOut] ON [equipment] ([ProvNumCheckedOut]);