CREATE TABLE [preference] ( [PrefName] varchar(255) NOT NULL DEFAULT '',
[ValueString] text NOT NULL,
[PrefNum] bigint NOT NULL IDENTITY(1,1),
[Comments] text DEFAULT NULL,
CONSTRAINT PK_PrefNum PRIMARY KEY ([PrefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PrefName] ON [preference] ([PrefName]);

--DBCC CHECKIDENT ('tablename', RESEED, 1146);