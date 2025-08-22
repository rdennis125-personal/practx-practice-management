CREATE TABLE [toothgridcell] ( [ToothGridCellNum] bigint NOT NULL IDENTITY(1,1),
[SheetFieldNum] bigint NOT NULL,
[ToothGridColNum] bigint NOT NULL,
[ValueEntered] varchar(255) NOT NULL,
[ToothNum] varchar(10) NOT NULL,
CONSTRAINT PK_ToothGridCellNum PRIMARY KEY ([ToothGridCellNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SheetFieldNum] ON [toothgridcell] ([SheetFieldNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ToothGridColNum] ON [toothgridcell] ([ToothGridColNum]);