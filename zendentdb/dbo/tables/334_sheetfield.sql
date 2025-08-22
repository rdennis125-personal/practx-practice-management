CREATE TABLE [sheetfield] ( [SheetFieldNum] bigint NOT NULL IDENTITY(1,1),
[SheetNum] bigint NOT NULL,
[FieldType] int NOT NULL,
[FieldName] varchar(255) DEFAULT NULL,
[FieldValue] text DEFAULT NULL,
[FontSize] float NOT NULL,
[FontName] varchar(255) DEFAULT NULL,
[FontIsBold] tinyint NOT NULL,
[XPos] int NOT NULL,
[YPos] int NOT NULL,
[Width] int NOT NULL,
[Height] int NOT NULL,
[GrowthBehavior] int NOT NULL,
[RadioButtonValue] varchar(255) NOT NULL,
[RadioButtonGroup] varchar(255) NOT NULL,
[IsRequired] tinyint NOT NULL,
[TabOrder] int NOT NULL,
[ReportableName] varchar(255) DEFAULT NULL,
[TextAlign] tinyint NOT NULL,
[ItemColor] int NOT NULL DEFAULT -16777216,
[DateTimeSig] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[IsLocked] tinyint NOT NULL,
[TabOrderMobile] int NOT NULL,
[UiLabelMobile] text NOT NULL,
[UiLabelMobileRadioButton] text NOT NULL,
[SheetFieldDefNum] bigint NOT NULL,
[CanElectronicallySign] tinyint NOT NULL,
[IsSigProvRestricted] tinyint NOT NULL,
CONSTRAINT PK_SheetFieldNum PRIMARY KEY ([SheetFieldNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SheetNum] ON [sheetfield] ([SheetNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FieldType] ON [sheetfield] ([FieldType]);

GO
CREATE NONCLUSTERED INDEX [IX_SheetNumFieldType] ON [sheetfield]([SheetNum],[FieldType]);

GO
CREATE NONCLUSTERED INDEX [IX_SheetFieldDefNum] ON [sheetfield] ([SheetFieldDefNum]);