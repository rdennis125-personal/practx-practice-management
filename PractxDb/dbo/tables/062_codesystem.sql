CREATE TABLE [codesystem] ( [CodeSystemNum] bigint NOT NULL IDENTITY(1,1),
[CodeSystemName] varchar(255) NOT NULL,
[VersionCur] varchar(255) NOT NULL,
[VersionAvail] varchar(255) NOT NULL,
[HL7OID] varchar(255) NOT NULL,
[Note] varchar(255) NOT NULL,
CONSTRAINT PK_CodeSystemNum PRIMARY KEY ([CodeSystemNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_CodeSystemName] ON [codesystem] ([CodeSystemName]);

--DBCC CHECKIDENT ('tablename', RESEED, 14);