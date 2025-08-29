CREATE TABLE [autocode] (
 [AutoCodeNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[IsHidden] tinyint NOT NULL DEFAULT 0,
[LessIntrusive] tinyint NOT NULL DEFAULT 0,

CONSTRAINT PK_AutoCodeNum PRIMARY KEY ([AutoCodeNum]));

GO
