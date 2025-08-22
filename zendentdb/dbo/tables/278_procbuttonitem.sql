CREATE TABLE [procbuttonitem] (
 [ProcButtonItemNum] bigint NOT NULL IDENTITY(1,1),
[ProcButtonNum] bigint NOT NULL,
[OldCode] varchar(15) COLLATE Latin1_General_100_CI_AS_SC_UTF8 NOT NULL DEFAULT '',
[AutoCodeNum] bigint NOT NULL,
[CodeNum] bigint NOT NULL,
[ItemOrder] bigint NOT NULL,

CONSTRAINT PK_ProcButtonItemNum PRIMARY KEY ([ProcButtonItemNum]));

GO
