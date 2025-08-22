CREATE TABLE [toolbutitem] (
 [ToolButItemNum] bigint NOT NULL IDENTITY(1,1),
[ProgramNum] bigint NOT NULL,
[ToolBar] smallint NOT NULL DEFAULT 0,
[ButtonText] varchar(255) DEFAULT '',

CONSTRAINT PK_ToolButItemNum PRIMARY KEY ([ToolButItemNum]));

GO
