CREATE TABLE [dbmlog] ( [DbmLogNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[FKey] bigint NOT NULL,
[FKeyType] tinyint NOT NULL,
[ActionType] tinyint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[MethodName] varchar(255) NOT NULL,
[LogText] text NOT NULL,
CONSTRAINT PK_DbmLogNum PRIMARY KEY ([DbmLogNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [dbmlog] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKeyAndType] ON [dbmlog]([FKey],[FKeyType]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTimeEntry] ON [dbmlog] ([DateTimeEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_MethodName] ON [dbmlog] ([MethodName]);