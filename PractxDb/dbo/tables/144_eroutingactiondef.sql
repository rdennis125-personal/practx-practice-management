CREATE TABLE [eroutingactiondef] ( [ERoutingActionDefNum] bigint NOT NULL IDENTITY(1,1),
[ERoutingDefNum] bigint NOT NULL,
[ERoutingActionType] tinyint NOT NULL,
[ItemOrder] int NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTLastModified] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_ERoutingActionDefNum PRIMARY KEY ([ERoutingActionDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ERoutingDefNum] ON [eroutingactiondef] ([ERoutingDefNum]);