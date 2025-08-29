CREATE TABLE [sheetdef] ( [SheetDefNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT NULL,
[SheetType] int NOT NULL,
[FontSize] float NOT NULL,
[FontName] varchar(255) DEFAULT NULL,
[Width] int NOT NULL,
[Height] int NOT NULL,
[IsLandscape] tinyint NOT NULL,
[PageCount] int NOT NULL,
[IsMultiPage] tinyint NOT NULL,
[BypassGlobalLock] tinyint NOT NULL,
[HasMobileLayout] tinyint NOT NULL,
[DateTCreated] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[RevID] int NOT NULL,
[AutoCheckSaveImage] tinyint NOT NULL DEFAULT 1,
[AutoCheckSaveImageDocCategory] bigint NOT NULL,
CONSTRAINT PK_SheetDefNum PRIMARY KEY ([SheetDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_AutoCheckSaveImageDocCategory] ON [sheetdef] ([AutoCheckSaveImageDocCategory]);

--DBCC CHECKIDENT ('tablename', RESEED, 2);