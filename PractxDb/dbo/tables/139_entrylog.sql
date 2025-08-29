CREATE TABLE [entrylog] ( [EntryLogNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[FKeyType] tinyint NOT NULL,
[FKey] bigint NOT NULL,
[LogSource] tinyint NOT NULL,
[EntryDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_EntryLogNum PRIMARY KEY ([EntryLogNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [entrylog] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [entrylog] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_EntryDateTime] ON [entrylog] ([EntryDateTime]);