CREATE TABLE [insfilingcodesubtype] ( [InsFilingCodeSubtypeNum] bigint NOT NULL IDENTITY(1,1),
[InsFilingCodeNum] bigint NOT NULL,
[Descript] varchar(255) DEFAULT NULL,
CONSTRAINT PK_InsFilingCodeSubtypeNum PRIMARY KEY ([InsFilingCodeSubtypeNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_InsFilingCodeNum] ON [insfilingcodesubtype] ([InsFilingCodeNum]);