CREATE TABLE [task] ( [TaskNum] bigint NOT NULL IDENTITY(1,1),
[TaskListNum] bigint NOT NULL,
[DateTask] date NOT NULL DEFAULT '0001-01-01',
[KeyNum] bigint NOT NULL,
[Descript] text DEFAULT NULL,
[TaskStatus] tinyint NOT NULL DEFAULT 0,
[IsRepeating] tinyint NOT NULL DEFAULT 0,
[DateType] tinyint NOT NULL DEFAULT 0,
[FromNum] bigint NOT NULL,
[ObjectType] tinyint NOT NULL DEFAULT 0,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[UserNum] bigint NOT NULL,
[DateTimeFinished] datetime NOT NULL,
[PriorityDefNum] bigint NOT NULL,
[ReminderGroupId] varchar(20) NOT NULL,
[ReminderType] smallint NOT NULL,
[ReminderFrequency] int NOT NULL,
[DateTimeOriginal] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[DescriptOverride] varchar(255) NOT NULL,
[IsReadOnly] tinyint NOT NULL DEFAULT 0,
[TriageCategory] bigint NOT NULL,
CONSTRAINT PK_TaskNum PRIMARY KEY ([TaskNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexTaskListNum] ON [task] ([TaskListNum]);

GO
CREATE NONCLUSTERED INDEX [IX_KeyNum] ON [task] ([KeyNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PriorityDefNum] ON [task] ([PriorityDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [task] ([SecDateTEdit]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTimeOriginal] ON [task] ([DateTimeOriginal]);

GO
CREATE NONCLUSTERED INDEX [IX_TaskStatus] ON [task] ([TaskStatus]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [task] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TriageCategory] ON [task] ([TriageCategory]);