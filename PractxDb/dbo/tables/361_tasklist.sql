CREATE TABLE [tasklist] ( [TaskListNum] bigint NOT NULL IDENTITY(1,1),
[Descript] varchar(255) DEFAULT '',
[Parent] bigint NOT NULL,
[DateTL] date NOT NULL DEFAULT '0001-01-01',
[IsRepeating] tinyint NOT NULL DEFAULT 0,
[DateType] tinyint NOT NULL DEFAULT 0,
[FromNum] bigint NOT NULL,
[ObjectType] tinyint NOT NULL DEFAULT 0,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[GlobalTaskFilterType] tinyint NOT NULL,
[TaskListStatus] tinyint NOT NULL,
CONSTRAINT PK_TaskListNum PRIMARY KEY ([TaskListNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexParent] ON [tasklist] ([Parent]);