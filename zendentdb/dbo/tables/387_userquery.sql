CREATE TABLE [userquery] (
 [QueryNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[FileName] varchar(255) DEFAULT '',
[QueryText] VARCHAR(MAX) NOT NULL,
[IsReleased] tinyint DEFAULT 0,
[IsPromptSetup] tinyint NOT NULL DEFAULT 1,

CONSTRAINT PK_QueryNum PRIMARY KEY ([QueryNum]));

GO
