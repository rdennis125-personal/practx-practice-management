CREATE TABLE [custreference] ( [CustReferenceNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateMostRecent] date NOT NULL DEFAULT '0001-01-01',
[Note] varchar(255) NOT NULL,
[IsBadRef] tinyint NOT NULL,
CONSTRAINT PK_CustReferenceNum PRIMARY KEY ([CustReferenceNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [custreference] ([PatNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 3);