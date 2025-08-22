CREATE TABLE [autocodeitem] (
 [AutoCodeItemNum] bigint NOT NULL IDENTITY(1,1),
[AutoCodeNum] bigint NOT NULL,
[OldCode] varchar(15) COLLATE Latin1_General_100_CI_AS_SC_UTF8 NOT NULL DEFAULT '',
[CodeNum] bigint NOT NULL,

CONSTRAINT PK_AutoCodeItemNum PRIMARY KEY ([AutoCodeItemNum]));

GO
