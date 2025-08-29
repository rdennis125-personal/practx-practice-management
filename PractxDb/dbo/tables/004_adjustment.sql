CREATE TABLE [adjustment] ( [AdjNum] bigint NOT NULL IDENTITY(1,1),
[AdjDate] date NOT NULL DEFAULT '0001-01-01',
[AdjAmt] FLOAT(53) NOT NULL DEFAULT 0,
[PatNum] bigint NOT NULL,
[AdjType] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[AdjNote] text DEFAULT NULL,
[ProcDate] date NOT NULL DEFAULT '0001-01-01',
[ProcNum] bigint NOT NULL,
[DateEntry] date NOT NULL DEFAULT '0001-01-01',
[ClinicNum] bigint NOT NULL,
[StatementNum] bigint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[TaxTransID] bigint NOT NULL,
CONSTRAINT PK_AdjNum PRIMARY KEY ([AdjNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [adjustment]([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [adjustment]([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_StatementNum] ON [adjustment]([StatementNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [adjustment]([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexProvNum] ON [adjustment]([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [adjustment]([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_indexPNAmt] ON [adjustment]([ProcNum],[AdjAmt]);

GO
CREATE NONCLUSTERED INDEX [IX_AdjDatePN] ON [adjustment]([AdjDate],[PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TaxTransID] ON [adjustment]([TaxTransID]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEditPN] ON [adjustment]([SecDateTEdit],[PatNum]);