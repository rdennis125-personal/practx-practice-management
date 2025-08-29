CREATE TABLE [sheetfielddef] ( [SheetFieldDefNum] bigint NOT NULL IDENTITY(1,1),
[SheetDefNum] bigint NOT NULL,
[FieldType] int NOT NULL,
[FieldName] varchar(255) DEFAULT NULL,
[FieldValue] text NOT NULL,
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
[IsPaymentOption] tinyint NOT NULL,
[ItemColor] int NOT NULL DEFAULT -16777216,
[IsLocked] tinyint NOT NULL,
[TabOrderMobile] int NOT NULL,
[UiLabelMobile] text NOT NULL,
[UiLabelMobileRadioButton] text NOT NULL,
[LayoutMode] tinyint NOT NULL,
[Language] varchar(255) NOT NULL,
[CanElectronicallySign] tinyint NOT NULL,
[IsSigProvRestricted] tinyint NOT NULL,
CONSTRAINT PK_SheetFieldDefNum PRIMARY KEY ([SheetFieldDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SheetDefNum] ON [sheetfielddef] ([SheetDefNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 12);