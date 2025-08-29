CREATE TABLE [tasksubscription] ( [TaskSubscriptionNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[TaskListNum] bigint NOT NULL,
[TaskNum] bigint NOT NULL,
CONSTRAINT PK_TaskSubscriptionNum PRIMARY KEY ([TaskSubscriptionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [tasksubscription] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TaskNum] ON [tasksubscription] ([TaskNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TaskListNum] ON [tasksubscription] ([TaskListNum]);