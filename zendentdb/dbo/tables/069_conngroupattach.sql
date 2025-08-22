CREATE TABLE [conngroupattach] ( [ConnGroupAttachNum] bigint NOT NULL IDENTITY(1,1),
[ConnectionGroupNum] bigint NOT NULL,
[CentralConnectionNum] bigint NOT NULL,
CONSTRAINT PK_ConnGroupAttachNum PRIMARY KEY ([ConnGroupAttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ConnectionGroupNum] ON [conngroupattach] ([ConnectionGroupNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CentralConnectionNum] ON [conngroupattach] ([CentralConnectionNum]);