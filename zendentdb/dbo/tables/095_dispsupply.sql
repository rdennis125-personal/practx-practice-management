CREATE TABLE [dispsupply] ( [DispSupplyNum] bigint NOT NULL IDENTITY(1,1),
[SupplyNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[DateDispensed] date NOT NULL DEFAULT '0001-01-01',
[DispQuantity] float NOT NULL,
[Note] text NOT NULL,
CONSTRAINT PK_DispSupplyNum PRIMARY KEY ([DispSupplyNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SupplyNum] ON [dispsupply] ([SupplyNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [dispsupply] ([ProvNum]);