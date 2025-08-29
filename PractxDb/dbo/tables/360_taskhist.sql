CREATE TABLE [taskhist] ( [TaskHistNum] bigint NOT NULL IDENTITY(1,1),
[UserNumHist] bigint NOT NULL,
[DateTStamp] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[IsNoteChange] tinyint NOT NULL,
[TaskNum] bigint NOT NULL,
[TaskListNum] bigint NOT NULL,
[DateTask] date NOT NULL DEFAULT '0001-01-01',
[KeyNum] bigint NOT NULL,
[Descript] text NOT NULL,
[TaskStatus] tinyint NOT NULL,
[IsRepeating] tinyint NOT NULL,
[DateType] tinyint NOT NULL,
[FromNum] bigint NOT NULL,
[ObjectType] tinyint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[UserNum] bigint NOT NULL,
[DateTimeFinished] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[PriorityDefNum] bigint NOT NULL,
[ReminderGroupId] varchar(20) NOT NULL,
[ReminderType] smallint NOT NULL,
[ReminderFrequency] int NOT NULL,
[DateTimeOriginal] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[DescriptOverride] varchar(255) NOT NULL,
[IsReadOnly] tinyint NOT NULL DEFAULT 0,
[TriageCategory] bigint NOT NULL,
CONSTRAINT PK_TaskHistNum PRIMARY KEY ([TaskHistNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_TaskNum] ON [taskhist] ([TaskNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [taskhist] ([SecDateTEdit]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTStamp] ON [taskhist] ([DateTStamp]);

GO
CREATE NONCLUSTERED INDEX [IX_KeyNum] ON [taskhist] ([KeyNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TriageCategory] ON [taskhist] ([TriageCategory]);