CREATE TABLE [sigbutdef] ( [SigButDefNum] bigint NOT NULL IDENTITY(1,1),
[ButtonText] varchar(255) DEFAULT '',
[ButtonIndex] smallint NOT NULL,
[SynchIcon] tinyint NOT NULL,
[ComputerName] varchar(255) DEFAULT '',
[SigElementDefNumUser] bigint NOT NULL,
[SigElementDefNumExtra] bigint NOT NULL,
[SigElementDefNumMsg] bigint NOT NULL,
CONSTRAINT PK_SigButDefNum PRIMARY KEY ([SigButDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SigElementDefNumUser] ON [sigbutdef] ([SigElementDefNumUser]);

GO
CREATE NONCLUSTERED INDEX [IX_SigElementDefNumExtra] ON [sigbutdef] ([SigElementDefNumExtra]);

GO
CREATE NONCLUSTERED INDEX [IX_SigElementDefNumMsg] ON [sigbutdef] ([SigElementDefNumMsg]);

--DBCC CHECKIDENT ('tablename', RESEED, 11);