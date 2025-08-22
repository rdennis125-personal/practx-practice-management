CREATE TABLE [sigelementdef] (
 [SigElementDefNum] bigint NOT NULL IDENTITY(1,1),
[LightRow] tinyint NOT NULL,
[LightColor] int NOT NULL,
[SigElementType] tinyint NOT NULL,
[SigText] varchar(255) DEFAULT '',
[Sound] VARCHAR(MAX) DEFAULT NULL,
[ItemOrder] smallint NOT NULL,

CONSTRAINT PK_SigElementDefNum PRIMARY KEY ([SigElementDefNum]));

GO
