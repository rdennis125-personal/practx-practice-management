CREATE TABLE [quickpastecat] (
 [QuickPasteCatNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[ItemOrder] smallint NOT NULL DEFAULT 0,
[DefaultForTypes] text DEFAULT NULL,

CONSTRAINT PK_QuickPasteCatNum PRIMARY KEY ([QuickPasteCatNum]));

GO
