CREATE TABLE [proctp] ( [ProcTPNum] bigint NOT NULL IDENTITY(1,1),
[TreatPlanNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[ProcNumOrig] bigint NOT NULL,
[ItemOrder] smallint NOT NULL DEFAULT 0,
[Priority] bigint NOT NULL,
[ToothNumTP] varchar(255) DEFAULT '',
[Surf] varchar(255) DEFAULT '',
[ProcCode] varchar(15) DEFAULT NULL,
[Descript] varchar(255) DEFAULT '',
[FeeAmt] FLOAT(53) NOT NULL DEFAULT 0,
[PriInsAmt] FLOAT(53) NOT NULL DEFAULT 0,
[SecInsAmt] FLOAT(53) NOT NULL DEFAULT 0,
[PatAmt] FLOAT(53) NOT NULL DEFAULT 0,
[Discount] FLOAT(53) NOT NULL,
[Prognosis] varchar(255) NOT NULL,
[Dx] varchar(255) NOT NULL,
[ProcAbbr] varchar(50) NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[FeeAllowed] FLOAT(53) NOT NULL,
[TaxAmt] FLOAT(53) NOT NULL,
[ProvNum] bigint NOT NULL,
[DateTP] date NOT NULL DEFAULT '0001-01-01',
[ClinicNum] bigint NOT NULL,
[CatPercUCR] FLOAT(53) NOT NULL,
CONSTRAINT PK_ProcTPNum PRIMARY KEY ([ProcTPNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [proctp] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexTreatPlanNum] ON [proctp] ([TreatPlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [proctp] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [proctp] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [proctp] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNumOrig] ON [proctp] ([ProcNumOrig]);