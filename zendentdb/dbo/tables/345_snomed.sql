CREATE TABLE [snomed] ( [SnomedNum] bigint NOT NULL IDENTITY(1,1),
[SnomedCode] varchar(255) NOT NULL,
[Description] varchar(255) NOT NULL,
CONSTRAINT PK_SnomedNum PRIMARY KEY ([SnomedNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SnomedCode] ON [snomed] ([SnomedCode]);