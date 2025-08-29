CREATE TABLE [eclipboardsheetdef] ( [EClipboardSheetDefNum] bigint NOT NULL IDENTITY(1,1),
[SheetDefNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[ResubmitInterval] bigint NOT NULL,
[ItemOrder] int NOT NULL,
[PrefillStatus] tinyint NOT NULL,
[MinAge] int NOT NULL DEFAULT -1,
[MaxAge] int NOT NULL DEFAULT -1,
[IgnoreSheetDefNums] text NOT NULL,
[PrefillStatusOverride] bigint NOT NULL,
CONSTRAINT PK_EClipboardSheetDefNum PRIMARY KEY ([EClipboardSheetDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SheetDefNum] ON [eclipboardsheetdef] ([SheetDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [eclipboardsheetdef] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ResubmitInterval] ON [eclipboardsheetdef] ([ResubmitInterval]);

GO
CREATE NONCLUSTERED INDEX [IX_PrefillStatusOverride] ON [eclipboardsheetdef] ([PrefillStatusOverride]);