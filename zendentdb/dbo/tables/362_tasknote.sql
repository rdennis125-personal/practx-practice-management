CREATE TABLE [tasknote] ( [TaskNoteNum] bigint NOT NULL IDENTITY(1,1),
[TaskNum] bigint NOT NULL,
[UserNum] bigint NOT NULL,
[DateTimeNote] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[Note] text NOT NULL,
CONSTRAINT PK_TaskNoteNum PRIMARY KEY ([TaskNoteNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_TaskNum] ON [tasknote] ([TaskNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [tasknote] ([UserNum]);