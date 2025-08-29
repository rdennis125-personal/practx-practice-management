CREATE TABLE [insplan] ( [PlanNum] bigint NOT NULL IDENTITY(1,1),
[GroupName] varchar(50) DEFAULT '',
[GroupNum] varchar(25) DEFAULT NULL,
[PlanNote] text NOT NULL,
[FeeSched] bigint NOT NULL,
[PlanType] char(1) DEFAULT '',
[ClaimFormNum] bigint NOT NULL,
[UseAltCode] tinyint NOT NULL DEFAULT 0,
[ClaimsUseUCR] tinyint NOT NULL DEFAULT 0,
[CopayFeeSched] bigint NOT NULL,
[EmployerNum] bigint NOT NULL,
[CarrierNum] bigint NOT NULL,
[AllowedFeeSched] bigint NOT NULL,
[TrojanID] varchar(100) DEFAULT '',
[DivisionNo] varchar(255) DEFAULT '',
[IsMedical] tinyint NOT NULL DEFAULT 0,
[FilingCode] bigint NOT NULL,
[DentaideCardSequence] tinyint NOT NULL,
[ShowBaseUnits] tinyint NOT NULL,
[CodeSubstNone] tinyint NOT NULL,
[IsHidden] tinyint NOT NULL,
[MonthRenew] tinyint NOT NULL,
[FilingCodeSubtype] bigint NOT NULL,
[CanadianPlanFlag] varchar(5) NOT NULL,
[CanadianDiagnosticCode] varchar(255) NOT NULL,
[CanadianInstitutionCode] varchar(255) NOT NULL,
[RxBIN] varchar(255) NOT NULL,
[CobRule] tinyint NOT NULL,
[SopCode] varchar(255) NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[HideFromVerifyList] tinyint NOT NULL,
[OrthoType] tinyint NOT NULL,
[OrthoAutoProcFreq] tinyint NOT NULL,
[OrthoAutoProcCodeNumOverride] bigint NOT NULL,
[OrthoAutoFeeBilled] FLOAT(53) NOT NULL,
[OrthoAutoClaimDaysWait] int NOT NULL,
[BillingType] bigint NOT NULL,
[HasPpoSubstWriteoffs] tinyint NOT NULL,
[ExclusionFeeRule] tinyint NOT NULL,
[ManualFeeSchedNum] bigint NOT NULL DEFAULT 0,
[IsBlueBookEnabled] tinyint NOT NULL DEFAULT 1,
[InsPlansZeroWriteOffsOnAnnualMaxOverride] tinyint NOT NULL,
[InsPlansZeroWriteOffsOnFreqOrAgingOverride] tinyint NOT NULL,
[PerVisitPatAmount] FLOAT(53) NOT NULL,
[PerVisitInsAmount] FLOAT(53) NOT NULL,
CONSTRAINT PK_PlanNum PRIMARY KEY ([PlanNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_CarrierNum] ON [insplan] ([CarrierNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FilingCodeSubtype] ON [insplan] ([FilingCodeSubtype]);

GO
CREATE NONCLUSTERED INDEX [IX_TrojanID] ON [insplan] ([TrojanID]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [insplan] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_CarrierNumPlanNum] ON [insplan]([CarrierNum],[PlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_OrthoAutoProcCodeNumOverride] ON [insplan] ([OrthoAutoProcCodeNumOverride]);

GO
CREATE NONCLUSTERED INDEX [IX_BillingType] ON [insplan] ([BillingType]);

GO
CREATE NONCLUSTERED INDEX [IX_FeeSched] ON [insplan] ([FeeSched]);

GO
CREATE NONCLUSTERED INDEX [IX_CopayFeeSched] ON [insplan] ([CopayFeeSched]);

GO
CREATE NONCLUSTERED INDEX [IX_ManualFeeSchedNum] ON [insplan] ([ManualFeeSchedNum]);

GO
CREATE NONCLUSTERED INDEX [IX_AllowedFeeSched] ON [insplan] ([AllowedFeeSched]);