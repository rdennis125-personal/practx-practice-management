CREATE TABLE [wikipage] ( [WikiPageNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[PageTitle] varchar(255) NOT NULL,
[KeyWords] varchar(255) NOT NULL,
[PageContent] VARCHAR(MAX) NOT NULL,
[DateTimeSaved] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[IsDraft] tinyint NOT NULL,
[IsLocked] tinyint NOT NULL,
[IsDeleted] tinyint NOT NULL DEFAULT 0,
[PageContentPlainText] VARCHAR(MAX) NOT NULL,
CONSTRAINT PK_wikipage_WikiPageNum PRIMARY KEY ([WikiPageNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [wikipage] ([UserNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 3);