CREATE TABLE [claimform] (
 [ClaimFormNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(50) DEFAULT '',
[IsHidden] tinyint NOT NULL DEFAULT 0,
[FontName] varchar(255) DEFAULT '',
[FontSize] float NOT NULL DEFAULT 0,
[UniqueID] varchar(255) DEFAULT '',
[PrintImages] tinyint NOT NULL DEFAULT 0,
[OffsetX] smallint NOT NULL DEFAULT 0,
[OffsetY] smallint NOT NULL DEFAULT 0,
[Width] int NOT NULL,
[Height] int NOT NULL,

CONSTRAINT PK_ClaimFormNum PRIMARY KEY ([ClaimFormNum]));

GO
