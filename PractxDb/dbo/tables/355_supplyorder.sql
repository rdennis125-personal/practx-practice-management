CREATE TABLE [supplyorder] ( [SupplyOrderNum] bigint NOT NULL IDENTITY(1,1),
[SupplierNum] bigint NOT NULL,
[DatePlaced] date NOT NULL,
[Note] text DEFAULT NULL,
[AmountTotal] FLOAT(53) NOT NULL,
[UserNum] bigint NOT NULL,
[ShippingCharge] FLOAT(53) NOT NULL,
[DateReceived] date NOT NULL DEFAULT '0001-01-01',
CONSTRAINT PK_SupplyOrderNum PRIMARY KEY ([SupplyOrderNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SupplierNum] ON [supplyorder] ([SupplierNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [supplyorder] ([UserNum]);