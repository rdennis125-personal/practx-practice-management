CREATE TABLE [grouppermission] ( [GroupPermNum] bigint NOT NULL IDENTITY(1,1),
[NewerDate] date NOT NULL DEFAULT '0001-01-01',
[NewerDays] int NOT NULL,
[UserGroupNum] bigint NOT NULL,
[PermType] tinyint NOT NULL DEFAULT 0,
[FKey] bigint NOT NULL,
CONSTRAINT PK_GroupPermNum PRIMARY KEY ([GroupPermNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [grouppermission] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_UserGroupNum] ON [grouppermission] ([UserGroupNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 794);