CREATE TABLE [alertread] ( [AlertReadNum] bigint NOT NULL IDENTITY(1,1),
[AlertItemNum] bigint NOT NULL,
[UserNum] bigint NOT NULL,
CONSTRAINT PK_AlertReadNum PRIMARY KEY ([AlertReadNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_AlertItemNum] ON [alertread] ([AlertItemNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [alertread] ([UserNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 2);