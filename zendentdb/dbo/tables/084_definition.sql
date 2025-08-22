CREATE TABLE [definition] (
 [DefNum] bigint NOT NULL IDENTITY(1,1),
[Category] tinyint NOT NULL DEFAULT 0,
[ItemOrder] smallint NOT NULL DEFAULT 0,
[ItemName] varchar(255) DEFAULT '',
[ItemValue] varchar(255) DEFAULT '',
[ItemColor] int NOT NULL DEFAULT 0,
[IsHidden] tinyint NOT NULL DEFAULT 0,

CONSTRAINT PK_DefNum PRIMARY KEY ([DefNum]));

GO
