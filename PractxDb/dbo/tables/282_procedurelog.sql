CREATE TABLE [procedurelog] ( [ProcNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[AptNum] bigint NOT NULL,
[OldCode] varchar(15) COLLATE Latin1_General_100_CI_AS_SC_UTF8 NOT NULL DEFAULT '',
[ProcDate] date NOT NULL DEFAULT '0001-01-01',
[ProcFee] FLOAT(53) NOT NULL DEFAULT 0,
[Surf] varchar(10) DEFAULT '',
[ToothNum] varchar(2) DEFAULT '',
[ToothRange] varchar(100) DEFAULT '',
[Priority] bigint NOT NULL,
[ProcStatus] tinyint NOT NULL DEFAULT 0,
[ProvNum] bigint NOT NULL,
[Dx] bigint NOT NULL,
[PlannedAptNum] bigint NOT NULL,
[PlaceService] tinyint NOT NULL DEFAULT 0,
[Prosthesis] char(1) DEFAULT '',
[DateOriginalProsth] date NOT NULL DEFAULT '0001-01-01',
[ClaimNote] varchar(80) DEFAULT '',
[DateEntryC] date NOT NULL DEFAULT '0001-01-01',
[ClinicNum] bigint NOT NULL,
[MedicalCode] varchar(15) COLLATE Latin1_General_100_CI_AS_SC_UTF8 DEFAULT '',
[DiagnosticCode] varchar(255) DEFAULT '',
[IsPrincDiag] tinyint NOT NULL DEFAULT 0,
[ProcNumLab] bigint NOT NULL,
[BillingTypeOne] bigint NOT NULL,
[BillingTypeTwo] bigint NOT NULL,
[CodeNum] bigint NOT NULL,
[CodeMod1] char(2) DEFAULT NULL,
[CodeMod2] char(2) DEFAULT NULL,
[CodeMod3] char(2) DEFAULT NULL,
[CodeMod4] char(2) DEFAULT NULL,
[RevCode] varchar(45) DEFAULT NULL,
[UnitQty] int NOT NULL,
[BaseUnits] int NOT NULL,
[StartTime] int NOT NULL,
[StopTime] int NOT NULL,
[DateTP] date NOT NULL,
[SiteNum] bigint NOT NULL,
[HideGraphics] tinyint NOT NULL,
[CanadianTypeCodes] varchar(20) NOT NULL,
[ProcTime] time NOT NULL,
[ProcTimeEnd] time NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[Prognosis] bigint NOT NULL,
[DrugUnit] tinyint NOT NULL,
[DrugQty] float NOT NULL,
[UnitQtyType] tinyint NOT NULL,
[StatementNum] bigint NOT NULL,
[IsLocked] tinyint NOT NULL,
[BillingNote] varchar(255) NOT NULL,
[RepeatChargeNum] bigint NOT NULL,
[SnomedBodySite] varchar(255) NOT NULL,
[DiagnosticCode2] varchar(255) NOT NULL,
[DiagnosticCode3] varchar(255) NOT NULL,
[DiagnosticCode4] varchar(255) NOT NULL,
[ProvOrderOverride] bigint NOT NULL,
[Discount] FLOAT(53) NOT NULL,
[IsDateProsthEst] tinyint NOT NULL,
[IcdVersion] tinyint NOT NULL,
[IsCpoe] tinyint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateComplete] date NOT NULL DEFAULT '0001-01-01',
[OrderingReferralNum] bigint NOT NULL,
[TaxAmt] FLOAT(53) NOT NULL,
[Urgency] tinyint NOT NULL,
[DiscountPlanAmt] FLOAT(53) NOT NULL,
CONSTRAINT PK_ProcNum PRIMARY KEY ([ProcNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_CodeNum] ON [procedurelog]([CodeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PlannedAptNum] ON [procedurelog]([PlannedAptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_BillingTypeOne] ON [procedurelog]([BillingTypeOne]);

GO
CREATE NONCLUSTERED INDEX [IX_BillingTypeTwo] ON [procedurelog]([BillingTypeTwo]);

GO
CREATE NONCLUSTERED INDEX [IX_Prognosis] ON [procedurelog]([Prognosis]);

GO
CREATE NONCLUSTERED INDEX [IX_procedurelog_ProcNumLab] ON [procedurelog]([ProcNumLab]);

GO
CREATE NONCLUSTERED INDEX [IX_StatementNum] ON [procedurelog]([StatementNum]);

GO
CREATE NONCLUSTERED INDEX [IX_RepeatChargeNum] ON [procedurelog]([RepeatChargeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvOrderOverride] ON [procedurelog]([ProvOrderOverride]);

GO
CREATE NONCLUSTERED INDEX [IX_indexPNPSCN] ON [procedurelog] ([PatNum],[ProcStatus],[ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexPNPD] ON [procedurelog] ([ProvNum],[ProcDate]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [procedurelog]([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [procedurelog]([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexAgingCovering] ON [procedurelog] ([PatNum],[ProcStatus],[ProcFee],[UnitQty],[BaseUnits],[ProcDate]);

GO
CREATE NONCLUSTERED INDEX [IX_OrderingReferralNum] ON [procedurelog] ([OrderingReferralNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatStatusCodeDate] ON [procedurelog] ([PatNum],[ProcStatus],[CodeNum],[ProcDate]);

GO
CREATE NONCLUSTERED INDEX [IX_DateComplete] ON [procedurelog] ([DateComplete]);

GO
CREATE NONCLUSTERED INDEX [IX_RadiologyProcs] ON [procedurelog] ([AptNum],[CodeNum],[ProcStatus],[IsCpoe],[ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_Priority] ON [procedurelog] ([Priority]);

GO
CREATE NONCLUSTERED INDEX [IX_DateClinicStatus] ON [procedurelog] ([ProcDate],[ClinicNum],[ProcStatus]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTStampPN] ON [procedurelog] ([DateTStamp],[PatNum]);