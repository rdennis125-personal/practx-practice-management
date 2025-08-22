CREATE TABLE [program] (
 [ProgramNum] bigint NOT NULL IDENTITY(1,1),
[ProgName] varchar(100) DEFAULT '',
[ProgDesc] varchar(100) DEFAULT '',
[Enabled] tinyint NOT NULL DEFAULT 0,
[Path] varchar(255) DEFAULT '',
[CommandLine] varchar(255) DEFAULT '',
[Note] text DEFAULT NULL,
[PluginDllName] varchar(255) NOT NULL,
[ButtonImage] text NOT NULL,
[FileTemplate] text NOT NULL,
[FilePath] varchar(255) NOT NULL,
[IsDisabledByHq] tinyint NOT NULL,
[CustErr] varchar(255) NOT NULL,

CONSTRAINT PK_ProgramNum PRIMARY KEY ([ProgramNum]));

GO
