CREATE TABLE [quickpastenote] (
 [QuickPasteNoteNum] bigint NOT NULL IDENTITY(1,1),
[QuickPasteCatNum] bigint NOT NULL,
[ItemOrder] smallint NOT NULL DEFAULT 0,
[Note] text DEFAULT NULL,
[Abbreviation] varchar(255) DEFAULT '',

CONSTRAINT PK_QuickPasteNoteNum PRIMARY KEY ([QuickPasteNoteNum]));

GO
