CREATE TABLE [encounter] ( [EncounterNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[CodeValue] varchar(30) NOT NULL,
[CodeSystem] varchar(30) NOT NULL,
[Note] text NOT NULL,
[DateEncounter] date NOT NULL DEFAULT '0001-01-01',
CONSTRAINT PK_EncounterNum PRIMARY KEY ([EncounterNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [encounter] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [encounter] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeValue] ON [encounter] ([CodeValue]);