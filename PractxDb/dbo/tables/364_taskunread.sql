CREATE TABLE [taskunread] ( [TaskUnreadNum] bigint NOT NULL IDENTITY(1,1),
[TaskNum] bigint NOT NULL,
[UserNum] bigint NOT NULL,
CONSTRAINT PK_TaskUnreadNum PRIMARY KEY ([TaskUnreadNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_TaskNum] ON [taskunread] ([TaskNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [taskunread] ([UserNum]);