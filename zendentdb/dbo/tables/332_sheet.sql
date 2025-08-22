CREATE TABLE [sheet] ( [SheetNum] bigint NOT NULL IDENTITY(1,1),
[SheetType] int NOT NULL,
[PatNum] bigint NOT NULL,
[DateTimeSheet] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[FontSize] float NOT NULL,
[FontName] varchar(255) DEFAULT NULL,
[Width] int NOT NULL,
[Height] int NOT NULL,
[IsLandscape] tinyint NOT NULL,
[InternalNote] text DEFAULT NULL,
[Description] varchar(255) NOT NULL,
[ShowInTerminal] tinyint NOT NULL,
[IsWebForm] tinyint NOT NULL,
[IsMultiPage] tinyint NOT NULL,
[IsDeleted] tinyint NOT NULL,
[SheetDefNum] bigint NOT NULL,
[DocNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[DateTSheetEdited] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[HasMobileLayout] tinyint NOT NULL,
[RevID] int NOT NULL,
[WebFormSheetID] bigint NOT NULL,
CONSTRAINT PK_SheetNum PRIMARY KEY ([SheetNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [sheet] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SheetDefNum] ON [sheet] ([SheetDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DocNum] ON [sheet] ([DocNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [sheet] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_WebFormSheetID] ON [sheet] ([WebFormSheetID]);