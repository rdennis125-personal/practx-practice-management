CREATE TABLE [supply] ( [SupplyNum] bigint NOT NULL IDENTITY(1,1),
[SupplierNum] bigint NOT NULL,
[CatalogNumber] varchar(255) DEFAULT NULL,
[Descript] varchar(255) DEFAULT NULL,
[Category] bigint NOT NULL,
[ItemOrder] int NOT NULL,
[LevelDesired] float NOT NULL,
[IsHidden] tinyint NOT NULL,
[Price] FLOAT(53) NOT NULL,
[BarCodeOrID] varchar(255) NOT NULL,
[DispDefaultQuant] float NOT NULL,
[DispUnitsCount] int NOT NULL,
[DispUnitDesc] varchar(255) NOT NULL,
[LevelOnHand] float NOT NULL,
[OrderQty] int NOT NULL,
CONSTRAINT PK_SupplyNum PRIMARY KEY ([SupplyNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SupplierNum] ON [supply] ([SupplierNum]);