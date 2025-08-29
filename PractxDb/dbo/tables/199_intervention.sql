CREATE TABLE [intervention] ( [InterventionNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[CodeValue] varchar(30) NOT NULL,
[CodeSystem] varchar(30) NOT NULL,
[Note] text NOT NULL,
[DateEntry] date NOT NULL DEFAULT '0001-01-01',
[CodeSet] tinyint NOT NULL,
[IsPatDeclined] tinyint NOT NULL,
CONSTRAINT PK_InterventionNum PRIMARY KEY ([InterventionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [intervention] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [intervention] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeValue] ON [intervention] ([CodeValue]);