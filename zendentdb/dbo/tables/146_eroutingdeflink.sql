CREATE TABLE [eroutingdeflink] ( [ERoutingDefLinkNum] bigint NOT NULL IDENTITY(1,1),
[ERoutingDefNum] bigint NOT NULL,
[Fkey] bigint NOT NULL,
[ERoutingType] tinyint NOT NULL,
CONSTRAINT PK_ERoutingDefLinkNum PRIMARY KEY ([ERoutingDefLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ERoutingDefNum] ON [eroutingdeflink] ([ERoutingDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_Fkey] ON [eroutingdeflink] ([Fkey]);