CREATE TABLE [patplan] ( [PatPlanNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[Ordinal] tinyint NOT NULL DEFAULT 0,
[IsPending] tinyint NOT NULL DEFAULT 0,
[Relationship] tinyint NOT NULL DEFAULT 0,
[PatID] varchar(100) DEFAULT '',
[InsSubNum] bigint NOT NULL,
[OrthoAutoFeeBilledOverride] FLOAT(53) NOT NULL DEFAULT -1,
[OrthoAutoNextClaimDate] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_PatPlanNum PRIMARY KEY ([PatPlanNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [patplan] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_InsSubNum] ON [patplan] ([InsSubNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [patplan] ([SecDateTEdit]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEntry] ON [patplan] ([SecDateTEntry]);

--DBCC CHECKIDENT ('tablename', RESEED, 7);