CREATE TABLE [taskancestor] ( [TaskAncestorNum] bigint NOT NULL IDENTITY(1,1),
[TaskNum] bigint NOT NULL,
[TaskListNum] bigint NOT NULL,
CONSTRAINT PK_TaskAncestorNum PRIMARY KEY ([TaskAncestorNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_TaskNum] ON [taskancestor] ([TaskNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TaskListCov] ON  [taskancestor] ([TaskListNum],[TaskNum]);