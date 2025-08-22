CREATE TABLE [activeinstance] ( [ActiveInstanceNum] bigint NOT NULL IDENTITY(1,1),
[ComputerNum] bigint NOT NULL,
[UserNum] bigint NOT NULL,
[ProcessId] bigint NOT NULL,
[DateTimeLastActive] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTRecorded] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ConnectionType] tinyint NOT NULL,
CONSTRAINT PK_ActiveInstanceNum PRIMARY KEY ([ActiveInstanceNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ComputerNum] ON [activeinstance]([ComputerNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [activeinstance]([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcessId] ON [activeinstance]([ProcessId]);