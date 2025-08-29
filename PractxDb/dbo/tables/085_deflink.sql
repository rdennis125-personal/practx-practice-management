CREATE TABLE [deflink] ( [DefLinkNum] bigint NOT NULL IDENTITY(1,1),
[DefNum] bigint NOT NULL,
[FKey] bigint NOT NULL,
[LinkType] tinyint NOT NULL,
CONSTRAINT PK_DefLinkNum PRIMARY KEY ([DefLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_DefNum] ON [deflink] ([DefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [deflink] ([FKey]);

--DBCC CHECKIDENT ('tablename', RESEED, 2);