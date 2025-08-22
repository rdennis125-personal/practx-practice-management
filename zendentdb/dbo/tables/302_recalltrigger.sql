CREATE TABLE [recalltrigger] ( [RecallTriggerNum] bigint NOT NULL IDENTITY(1,1),
[RecallTypeNum] bigint NOT NULL,
[CodeNum] bigint NOT NULL,
CONSTRAINT PK_RecallTriggerNum PRIMARY KEY ([RecallTriggerNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_CodeNum] ON [recalltrigger] ([CodeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_RecallTypeNum] ON [recalltrigger] ([RecallTypeNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 9);