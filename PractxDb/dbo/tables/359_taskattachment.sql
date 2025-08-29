CREATE TABLE [taskattachment] ( [TaskAttachmentNum] bigint NOT NULL IDENTITY(1,1),
[TaskNum] bigint NOT NULL,
[DocNum] bigint NOT NULL,
[TextValue] text NOT NULL,
[Description] varchar(255) NOT NULL,
CONSTRAINT PK_TaskAttachmentNum PRIMARY KEY ([TaskAttachmentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_TaskNum] ON [taskattachment] ([TaskNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DocNum] ON [taskattachment] ([DocNum]);