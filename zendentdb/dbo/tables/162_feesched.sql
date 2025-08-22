CREATE TABLE [feesched] ( [FeeSchedNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT NULL,
[FeeSchedType] int NOT NULL,
[ItemOrder] int NOT NULL,
[IsHidden] tinyint NOT NULL,
[IsGlobal] tinyint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_FeeSchedNum PRIMARY KEY ([FeeSchedNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [feesched] ([SecUserNumEntry]);

--DBCC CHECKIDENT ('tablename', RESEED, 54);