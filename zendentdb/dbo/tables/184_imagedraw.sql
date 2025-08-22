CREATE TABLE [imagedraw] ( [ImageDrawNum] bigint NOT NULL IDENTITY(1,1),
[DocNum] bigint NOT NULL,
[MountNum] bigint NOT NULL,
[ColorDraw] int NOT NULL,
[ColorBack] int NOT NULL,
[DrawingSegment] text NOT NULL,
[DrawText] varchar(255) NOT NULL,
[FontSize] float NOT NULL,
[DrawType] tinyint NOT NULL,
[ImageAnnotVendor] tinyint NOT NULL,
[Details] text NOT NULL,
CONSTRAINT PK_ImageDrawNum PRIMARY KEY ([ImageDrawNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_DocNum] ON [imagedraw] ([DocNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MountNum] ON [imagedraw] ([MountNum]);