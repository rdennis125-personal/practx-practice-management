CREATE TABLE [medicationpat] ( [MedicationPatNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[MedicationNum] bigint NOT NULL,
[PatNote] text DEFAULT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[DateStart] date NOT NULL DEFAULT '0001-01-01',
[DateStop] date NOT NULL DEFAULT '0001-01-01',
[ProvNum] bigint NOT NULL,
[MedDescript] varchar(255) NOT NULL,
[RxCui] bigint NOT NULL,
[ErxGuid] varchar(255) NOT NULL,
[IsCpoe] tinyint NOT NULL,
CONSTRAINT PK_MedicationPatNum PRIMARY KEY ([MedicationPatNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [medicationpat] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [medicationpat] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_RxCui] ON [medicationpat] ([RxCui]);