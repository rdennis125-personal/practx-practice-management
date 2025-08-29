CREATE TABLE [autocodecond] (
 [AutoCodeCondNum] bigint NOT NULL IDENTITY(1,1),
[AutoCodeItemNum] bigint NOT NULL,
[Cond] tinyint NOT NULL DEFAULT 0,

CONSTRAINT PK_AutoCodeCondNum PRIMARY KEY ([AutoCodeCondNum]));

GO
