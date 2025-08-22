CREATE TABLE [procedurecode] ( [CodeNum] bigint NOT NULL IDENTITY(1,1),
[ProcCode] varchar(15) COLLATE Latin1_General_100_CI_AS_SC_UTF8 NOT NULL DEFAULT '',
[Descript] varchar(255) DEFAULT '',
[AbbrDesc] varchar(50) DEFAULT '',
[ProcTime] varchar(24) DEFAULT '',
[ProcCat] bigint NOT NULL,
[TreatArea] tinyint NOT NULL DEFAULT 0,
[NoBillIns] tinyint NOT NULL DEFAULT 0,
[IsProsth] tinyint NOT NULL DEFAULT 0,
[DefaultNote] text DEFAULT NULL,
[IsHygiene] tinyint NOT NULL DEFAULT 0,
[GTypeNum] smallint NOT NULL DEFAULT 0,
[AlternateCode1] varchar(15) DEFAULT '',
[MedicalCode] varchar(15) COLLATE Latin1_General_100_CI_AS_SC_UTF8 DEFAULT '',
[IsTaxed] tinyint NOT NULL DEFAULT 0,
[PaintType] tinyint NOT NULL DEFAULT 0,
[GraphicColor] int NOT NULL,
[LaymanTerm] varchar(255) DEFAULT '',
[IsCanadianLab] tinyint NOT NULL,
[PreExisting] tinyint NOT NULL DEFAULT 0,
[BaseUnits] int NOT NULL,
[SubstitutionCode] varchar(25) DEFAULT NULL,
[SubstOnlyIf] int NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[IsMultiVisit] tinyint NOT NULL,
[DrugNDC] varchar(255) NOT NULL,
[RevenueCodeDefault] varchar(255) NOT NULL,
[ProvNumDefault] bigint NOT NULL,
[CanadaTimeUnits] FLOAT(53) NOT NULL,
[IsRadiology] tinyint NOT NULL,
[DefaultClaimNote] text NOT NULL,
[DefaultTPNote] text NOT NULL,
[BypassGlobalLock] tinyint NOT NULL,
[TaxCode] varchar(16) NOT NULL,
[PaintText] varchar(255) NOT NULL,
[AreaAlsoToothRange] tinyint NOT NULL,
[DiagnosticCodes] varchar(255) NOT NULL,
CONSTRAINT PK_CodeNum PRIMARY KEY ([CodeNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProcCode] ON [procedurecode] ([ProcCode]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNumDefault] ON [procedurecode] ([ProvNumDefault]);

--DBCC CHECKIDENT ('tablename', RESEED, 45);