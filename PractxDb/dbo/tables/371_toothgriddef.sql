CREATE TABLE [toothgriddef] ( [ToothGridDefNum] bigint NOT NULL IDENTITY(1,1),
[NameInternal] varchar(255) DEFAULT NULL,
[NameShowing] varchar(255) DEFAULT NULL,
[CellType] tinyint NOT NULL,
[ItemOrder] smallint NOT NULL,
[ColumnWidth] smallint NOT NULL,
[CodeNum] bigint NOT NULL,
[ProcStatus] tinyint NOT NULL,
[SheetFieldDefNum] bigint NOT NULL,
CONSTRAINT PK_ToothGridDefNum PRIMARY KEY ([ToothGridDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_CodeNum] ON [toothgriddef] ([CodeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SheetFieldDefNum] ON [toothgriddef] ([SheetFieldDefNum]);