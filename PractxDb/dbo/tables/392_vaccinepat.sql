CREATE TABLE [vaccinepat] ( [VaccinePatNum] bigint NOT NULL IDENTITY(1,1),
[VaccineDefNum] bigint NOT NULL,
[DateTimeStart] datetime DEFAULT NULL,
[DateTimeEnd] datetime DEFAULT NULL,
[AdministeredAmt] float NOT NULL,
[DrugUnitNum] bigint NOT NULL,
[LotNumber] varchar(255) NOT NULL,
[PatNum] bigint NOT NULL,
[Note] text NOT NULL,
[FilledCity] varchar(255) NOT NULL,
[FilledST] varchar(255) NOT NULL,
[CompletionStatus] tinyint NOT NULL,
[AdministrationNoteCode] tinyint NOT NULL,
[UserNum] bigint NOT NULL,
[ProvNumOrdering] bigint NOT NULL,
[ProvNumAdminister] bigint NOT NULL,
[DateExpire] date NOT NULL DEFAULT '0001-01-01',
[RefusalReason] tinyint NOT NULL,
[ActionCode] tinyint NOT NULL,
[AdministrationRoute] tinyint NOT NULL,
[AdministrationSite] tinyint NOT NULL,
CONSTRAINT PK_VaccinePatNum PRIMARY KEY ([VaccinePatNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_VaccineDefNum] ON [vaccinepat] ([VaccineDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DrugUnitNum] ON [vaccinepat] ([DrugUnitNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [vaccinepat] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [vaccinepat] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNumOrdering] ON [vaccinepat] ([ProvNumOrdering]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNumAdminister] ON [vaccinepat] ([ProvNumAdminister]);