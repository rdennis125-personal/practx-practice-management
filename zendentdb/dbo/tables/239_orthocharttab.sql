CREATE TABLE [orthocharttab] (
 [OrthoChartTabNum] bigint NOT NULL IDENTITY(1,1),
[TabName] varchar(255) NOT NULL,
[ItemOrder] int NOT NULL,
[IsHidden] tinyint NOT NULL,

CONSTRAINT PK_OrthoChartTabNum PRIMARY KEY ([OrthoChartTabNum]));

GO
