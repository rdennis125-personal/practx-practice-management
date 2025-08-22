CREATE TABLE [orthocharttablink] ( [OrthoChartTabLinkNum] bigint NOT NULL IDENTITY(1,1),
[ItemOrder] int NOT NULL,
[OrthoChartTabNum] bigint NOT NULL,
[DisplayFieldNum] bigint NOT NULL,
[ColumnWidthOverride] int NOT NULL,
CONSTRAINT PK_OrthoChartTabLinkNum PRIMARY KEY ([OrthoChartTabLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_OrthoChartTabNum] ON [orthocharttablink] ([OrthoChartTabNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DisplayFieldNum] ON [orthocharttablink] ([DisplayFieldNum]);