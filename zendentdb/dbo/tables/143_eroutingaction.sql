CREATE TABLE [eroutingaction] ( [ERoutingActionNum] bigint NOT NULL IDENTITY(1,1),
[ERoutingNum] bigint NOT NULL,
[ItemOrder] int NOT NULL,
[ERoutingActionType] tinyint NOT NULL,
[UserNum] bigint NOT NULL,
[IsComplete] tinyint NOT NULL,
[DateTimeComplete] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_ERoutingActionNum PRIMARY KEY ([ERoutingActionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ERoutingNum] ON [eroutingaction] ([ERoutingNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [eroutingaction] ([UserNum]);