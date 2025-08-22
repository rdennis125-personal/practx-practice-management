CREATE TABLE [codegroup] (
 [CodeGroupNum] bigint NOT NULL IDENTITY(1,1),
[GroupName] varchar(50) NOT NULL,
[ProcCodes] text NOT NULL,
[ItemOrder] int NOT NULL,
[CodeGroupFixed] tinyint NOT NULL,
[IsHidden] tinyint NOT NULL,
[ShowInAgeLimit] tinyint NOT NULL,

CONSTRAINT PK_CodeGroupNum PRIMARY KEY ([CodeGroupNum]));

GO
