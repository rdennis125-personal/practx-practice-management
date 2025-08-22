CREATE TABLE [ehrnotperformed] ( [EhrNotPerformedNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[CodeValue] varchar(30) NOT NULL,
[CodeSystem] varchar(30) NOT NULL,
[CodeValueReason] varchar(30) NOT NULL,
[CodeSystemReason] varchar(30) NOT NULL,
[Note] text NOT NULL,
[DateEntry] date NOT NULL DEFAULT '0001-01-01',
CONSTRAINT PK_EhrNotPerformedNum PRIMARY KEY ([EhrNotPerformedNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [ehrnotperformed] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [ehrnotperformed] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeValue] ON [ehrnotperformed] ([CodeValue]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeValueReason] ON [ehrnotperformed] ([CodeValueReason]);