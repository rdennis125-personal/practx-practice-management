CREATE TABLE [supplyorderitem] ( [SupplyOrderItemNum] bigint NOT NULL IDENTITY(1,1),
[SupplyOrderNum] bigint NOT NULL,
[SupplyNum] bigint NOT NULL,
[Qty] int NOT NULL,
[Price] FLOAT(53) NOT NULL,
CONSTRAINT PK_SupplyOrderItemNum PRIMARY KEY ([SupplyOrderItemNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SupplyOrderNum] ON [supplyorderitem] ([SupplyOrderNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SupplyNum] ON [supplyorderitem] ([SupplyNum]);