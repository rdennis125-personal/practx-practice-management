CREATE TABLE [computerpref] ( [ComputerPrefNum] bigint NOT NULL IDENTITY(1,1),
[ComputerName] varchar(64) NOT NULL,
[GraphicsUseHardware] tinyint NOT NULL DEFAULT 0,
[GraphicsSimple] tinyint NOT NULL DEFAULT 0,
[SensorType] varchar(255) DEFAULT 'D',
[SensorBinned] tinyint NOT NULL,
[SensorPort] int DEFAULT 0,
[SensorExposure] int DEFAULT 1,
[GraphicsDoubleBuffering] tinyint NOT NULL,
[PreferredPixelFormatNum] int DEFAULT 0,
[AtoZpath] varchar(255) DEFAULT NULL,
[TaskKeepListHidden] tinyint NOT NULL,
[TaskDock] int NOT NULL DEFAULT 0,
[TaskX] int NOT NULL DEFAULT 900,
[TaskY] int NOT NULL DEFAULT 625,
[DirectXFormat] varchar(255) DEFAULT '',
[ScanDocSelectSource] tinyint NOT NULL,
[ScanDocShowOptions] tinyint NOT NULL,
[ScanDocDuplex] tinyint NOT NULL,
[ScanDocGrayscale] tinyint NOT NULL,
[ScanDocResolution] int NOT NULL,
[ScanDocQuality] tinyint NOT NULL,
[ClinicNum] bigint NOT NULL,
[ApptViewNum] bigint NOT NULL,
[RecentApptView] tinyint NOT NULL,
[PatSelectSearchMode] tinyint NOT NULL,
[NoShowLanguage] tinyint NOT NULL,
[NoShowDecimal] tinyint NOT NULL,
[ComputerOS] varchar(255) NOT NULL,
[HelpButtonXAdjustment] FLOAT(53) NOT NULL,
[GraphicsUseDirectX11] tinyint NOT NULL DEFAULT 0,
[Zoom] int NOT NULL DEFAULT 0,
[VideoRectangle] varchar(255) NOT NULL,
CONSTRAINT PK_ComputerPrefNum PRIMARY KEY ([ComputerPrefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [computerpref] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptViewNum] ON [computerpref] ([ApptViewNum]);