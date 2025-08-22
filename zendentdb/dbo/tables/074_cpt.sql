CREATE TABLE [cpt] ( [CptNum] bigint NOT NULL IDENTITY(1,1),
[CptCode] varchar(255) NOT NULL,
[Description] varchar(4000) NOT NULL,
[VersionIDs] varchar(255) NOT NULL,
CONSTRAINT PK_CptNum PRIMARY KEY ([CptNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_CptCode] ON [cpt] ([CptCode]);