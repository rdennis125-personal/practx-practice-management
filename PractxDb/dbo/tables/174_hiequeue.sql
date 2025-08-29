CREATE TABLE [hiequeue] ( [HieQueueNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
CONSTRAINT PK_HieQueueNum PRIMARY KEY ([HieQueueNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [hiequeue] ([PatNum]);