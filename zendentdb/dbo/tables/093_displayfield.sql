CREATE TABLE [displayfield] ( [DisplayFieldNum] bigint NOT NULL IDENTITY(1,1),
[InternalName] varchar(255) DEFAULT NULL,
[ItemOrder] int NOT NULL,
[Description] varchar(255) DEFAULT NULL,
[ColumnWidth] int NOT NULL,
[Category] int NOT NULL DEFAULT 0,
[ChartViewNum] bigint NOT NULL,
[PickList] text NOT NULL,
[DescriptionOverride] varchar(255) NOT NULL,
CONSTRAINT PK_DisplayFieldNum PRIMARY KEY ([DisplayFieldNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ChartViewNum] ON [displayfield] ([ChartViewNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 97);