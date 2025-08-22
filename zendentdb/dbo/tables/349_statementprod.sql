CREATE TABLE [statementprod] ( [StatementProdNum] bigint NOT NULL IDENTITY(1,1),
[StatementNum] bigint NOT NULL,
[FKey] bigint NOT NULL,
[ProdType] tinyint NOT NULL,
[LateChargeAdjNum] bigint NOT NULL,
[DocNum] bigint NOT NULL,
CONSTRAINT PK_StatementProdNum PRIMARY KEY ([StatementProdNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_StatementNum] ON [statementprod] ([StatementNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [statementprod] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_ProdType] ON [statementprod] ([ProdType]);

GO
CREATE NONCLUSTERED INDEX [IX_LateChargeAdjNum] ON [statementprod] ([LateChargeAdjNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DocNum] ON [statementprod] ([DocNum]);