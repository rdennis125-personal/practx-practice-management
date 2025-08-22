CREATE TABLE [patientnote] ( [PatNum] bigint NOT NULL,
[FamFinancial] text DEFAULT NULL,
[ApptPhone] text DEFAULT NULL,
[Medical] text DEFAULT NULL,
[Service] text DEFAULT NULL,
[MedicalComp] text DEFAULT NULL,
[Treatment] text DEFAULT NULL,
[ICEName] varchar(255) NOT NULL,
[ICEPhone] varchar(30) NOT NULL,
[OrthoMonthsTreatOverride] int NOT NULL DEFAULT -1,
[DateOrthoPlacementOverride] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[Consent] tinyint NOT NULL,
[UserNumOrthoLocked] bigint NOT NULL,
[Pronoun] tinyint NOT NULL,
CONSTRAINT PK_PatNum PRIMARY KEY ([PatNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEntry] ON [patientnote] ([SecDateTEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [patientnote] ([SecDateTEdit]);