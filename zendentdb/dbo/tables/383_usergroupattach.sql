CREATE TABLE [usergroupattach] ( [UserGroupAttachNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[UserGroupNum] bigint NOT NULL,
CONSTRAINT PK_UserGroupAttachNum PRIMARY KEY ([UserGroupAttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserGroupNum] ON [usergroupattach] ([UserGroupNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [usergroupattach] ([UserNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 4);