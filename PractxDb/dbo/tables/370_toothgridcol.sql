CREATE TABLE [toothgridcol] ( [ToothGridColNum] bigint NOT NULL IDENTITY(1,1),
[SheetFieldNum] bigint NOT NULL,
[NameItem] varchar(255) NOT NULL,
[CellType] tinyint NOT NULL,
[ItemOrder] smallint NOT NULL,
[ColumnWidth] smallint NOT NULL,
[CodeNum] bigint NOT NULL,
[ProcStatus] tinyint NOT NULL,
CONSTRAINT PK_ToothGridColNum PRIMARY KEY ([ToothGridColNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SheetFieldNum] ON [toothgridcol] ([SheetFieldNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeNum] ON [toothgridcol] ([CodeNum]);