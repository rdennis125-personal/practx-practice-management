CREATE TABLE [autonote] ( [AutoNoteNum] bigint NOT NULL IDENTITY(1,1),
[AutoNoteName] varchar(50) DEFAULT NULL,
[MainText] text DEFAULT NULL,
[Category] bigint NOT NULL,
CONSTRAINT PK_AutoNoteNum PRIMARY KEY ([AutoNoteNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_Category] ON [autonote] ([Category]);

--DBCC CHECKIDENT ('tablename', RESEED, 17);