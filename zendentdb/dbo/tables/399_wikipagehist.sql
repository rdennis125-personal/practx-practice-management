CREATE TABLE [wikipagehist] ( 
[WikiPageNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[PageTitle] varchar(255) NOT NULL,
[PageContent] VARCHAR(MAX) NOT NULL,
[DateTimeSaved] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[IsDeleted] tinyint NOT NULL,
CONSTRAINT PK_WikiPageNum PRIMARY KEY ([WikiPageNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [wikipagehist] ([UserNum]);