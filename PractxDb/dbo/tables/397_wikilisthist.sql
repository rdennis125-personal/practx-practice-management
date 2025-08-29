CREATE TABLE [wikilisthist] ( [WikiListHistNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[ListName] varchar(255) NOT NULL,
[ListHeaders] text NOT NULL,
[ListContent] VARCHAR(MAX) NOT NULL,
[DateTimeSaved] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_WikiListHistNum PRIMARY KEY ([WikiListHistNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [wikilisthist] ([UserNum]);