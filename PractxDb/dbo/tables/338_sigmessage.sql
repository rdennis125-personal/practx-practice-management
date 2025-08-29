CREATE TABLE [sigmessage] ( [SigMessageNum] bigint NOT NULL IDENTITY(1,1),
[ButtonText] varchar(255) NOT NULL,
[ButtonIndex] int NOT NULL,
[SynchIcon] tinyint NOT NULL,
[FromUser] varchar(255) NOT NULL,
[ToUser] varchar(255) NOT NULL,
[MessageDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[AckDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SigText] varchar(255) NOT NULL,
[SigElementDefNumUser] bigint NOT NULL,
[SigElementDefNumExtra] bigint NOT NULL,
[SigElementDefNumMsg] bigint NOT NULL,
CONSTRAINT PK_SigMessageNum PRIMARY KEY ([SigMessageNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SigElementDefNumUser] ON [sigmessage] ([SigElementDefNumUser]);

GO
CREATE NONCLUSTERED INDEX [IX_SigElementDefNumExtra] ON [sigmessage] ([SigElementDefNumExtra]);

GO
CREATE NONCLUSTERED INDEX [IX_SigElementDefNumMsg] ON [sigmessage] ([SigElementDefNumMsg]);