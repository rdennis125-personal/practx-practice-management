CREATE TABLE [insfilingcode] ( [InsFilingCodeNum] bigint NOT NULL IDENTITY(1,1),
[Descript] varchar(255) DEFAULT NULL,
[EclaimCode] varchar(100) DEFAULT NULL,
[ItemOrder] int DEFAULT NULL,
[GroupType] bigint NOT NULL,
[ExcludeOtherCoverageOnPriClaims] tinyint NOT NULL,
CONSTRAINT PK_InsFilingCodeNum PRIMARY KEY ([InsFilingCodeNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ItemOrder] ON [insfilingcode] ([ItemOrder]);

GO
CREATE NONCLUSTERED INDEX [IX_GroupType] ON [insfilingcode] ([GroupType]);

--DBCC CHECKIDENT ('tablename', RESEED, 24);