CREATE TABLE [usergroup] ( [UserGroupNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[UserGroupNumCEMT] bigint NOT NULL,
CONSTRAINT PK_UserGroupNum PRIMARY KEY ([UserGroupNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserGroupNumCEMT] ON [usergroup] ([UserGroupNumCEMT]);

--DBCC CHECKIDENT ('tablename', RESEED, 4);