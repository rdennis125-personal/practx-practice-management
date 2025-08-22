CREATE TABLE [claim] ( [ClaimNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateService] date NOT NULL DEFAULT '0001-01-01',
[DateSent] date NOT NULL DEFAULT '0001-01-01',
[ClaimStatus] char(1) DEFAULT '',
[DateReceived] date NOT NULL DEFAULT '0001-01-01',
[PlanNum] bigint NOT NULL,
[ProvTreat] bigint NOT NULL,
[ClaimFee] FLOAT(53) NOT NULL DEFAULT 0,
[InsPayEst] FLOAT(53) NOT NULL DEFAULT 0,
[InsPayAmt] FLOAT(53) NOT NULL DEFAULT 0,
[DedApplied] FLOAT(53) NOT NULL DEFAULT 0,
[PreAuthString] varchar(40) DEFAULT '',
[IsProsthesis] char(1) DEFAULT '',
[PriorDate] date NOT NULL DEFAULT '0001-01-01',
[ReasonUnderPaid] varchar(255) DEFAULT '',
[ClaimNote] varchar(400) DEFAULT NULL,
[ClaimType] varchar(255) DEFAULT '',
[ProvBill] bigint NOT NULL,
[ReferringProv] bigint NOT NULL,
[RefNumString] varchar(40) DEFAULT '',
[PlaceService] tinyint NOT NULL DEFAULT 0,
[AccidentRelated] char(1) DEFAULT '',
[AccidentDate] date NOT NULL DEFAULT '0001-01-01',
[AccidentST] varchar(2) DEFAULT '',
[EmployRelated] tinyint NOT NULL DEFAULT 0,
[IsOrtho] tinyint NOT NULL DEFAULT 0,
[OrthoRemainM] tinyint NOT NULL DEFAULT 0,
[OrthoDate] date NOT NULL DEFAULT '0001-01-01',
[PatRelat] tinyint NOT NULL DEFAULT 0,
[PlanNum2] bigint NOT NULL,
[PatRelat2] tinyint NOT NULL DEFAULT 0,
[WriteOff] FLOAT(53) NOT NULL DEFAULT 0,
[Radiographs] tinyint NOT NULL DEFAULT 0,
[ClinicNum] bigint NOT NULL,
[ClaimForm] bigint NOT NULL,
[AttachedImages] int NOT NULL,
[AttachedModels] int NOT NULL,
[AttachedFlags] varchar(255) DEFAULT NULL,
[AttachmentID] varchar(255) DEFAULT NULL,
[CanadianMaterialsForwarded] varchar(10) NOT NULL,
[CanadianReferralProviderNum] varchar(20) NOT NULL,
[CanadianReferralReason] tinyint NOT NULL,
[CanadianIsInitialLower] varchar(5) NOT NULL,
[CanadianDateInitialLower] date NOT NULL DEFAULT '0001-01-01',
[CanadianMandProsthMaterial] tinyint NOT NULL,
[CanadianIsInitialUpper] varchar(5) NOT NULL,
[CanadianDateInitialUpper] date NOT NULL DEFAULT '0001-01-01',
[CanadianMaxProsthMaterial] tinyint NOT NULL,
[InsSubNum] bigint NOT NULL,
[InsSubNum2] bigint NOT NULL,
[CanadaTransRefNum] varchar(255) NOT NULL,
[CanadaEstTreatStartDate] date NOT NULL DEFAULT '0001-01-01',
[CanadaInitialPayment] FLOAT(53) NOT NULL,
[CanadaPaymentMode] tinyint NOT NULL,
[CanadaTreatDuration] tinyint NOT NULL,
[CanadaNumAnticipatedPayments] tinyint NOT NULL,
[CanadaAnticipatedPayAmount] FLOAT(53) NOT NULL,
[PriorAuthorizationNumber] varchar(255) NOT NULL,
[SpecialProgramCode] tinyint NOT NULL,
[UniformBillType] varchar(255) NOT NULL,
[MedType] tinyint NOT NULL,
[AdmissionTypeCode] varchar(255) NOT NULL,
[AdmissionSourceCode] varchar(255) NOT NULL,
[PatientStatusCode] varchar(255) NOT NULL,
[CustomTracking] bigint NOT NULL,
[DateResent] date NOT NULL DEFAULT '0001-01-01',
[CorrectionType] tinyint NOT NULL,
[ClaimIdentifier] varchar(255) NOT NULL,
[OrigRefNum] varchar(255) NOT NULL,
[ProvOrderOverride] bigint NOT NULL,
[OrthoTotalM] tinyint NOT NULL,
[ShareOfCost] FLOAT(53) NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[OrderingReferralNum] bigint NOT NULL,
[DateSentOrig] date NOT NULL DEFAULT '0001-01-01',
[DateIllnessInjuryPreg] date NOT NULL DEFAULT '0001-01-01',
[DateIllnessInjuryPregQualifier] smallint NOT NULL,
[DateOther] date NOT NULL DEFAULT '0001-01-01',
[DateOtherQualifier] smallint NOT NULL,
[IsOutsideLab] tinyint NOT NULL,
[SecurityHash] varchar(255) NOT NULL,
[Narrative] text NOT NULL,
CONSTRAINT PK_ClaimNum PRIMARY KEY ([ClaimNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPlanNum] ON [claim] ([PlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_InsSubNum] ON [claim] ([InsSubNum]);

GO
CREATE NONCLUSTERED INDEX [IX_InsSubNum2] ON [claim] ([InsSubNum2]);

GO
CREATE NONCLUSTERED INDEX [IX_CustomTracking] ON [claim] ([CustomTracking]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvOrderOverride] ON [claim] ([ProvOrderOverride]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [claim] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_indexOutClaimCovering] ON [claim]([PlanNum],[ClaimStatus],[ClaimType],[PatNum],[ClaimNum],[DateService],[ProvTreat],[ClaimFee],[ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_OrderingReferralNum] ON [claim] ([OrderingReferralNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvBill] ON [claim] ([ProvBill]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvTreat] ON [claim] ([ProvTreat]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [claim] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatStatusTypeDate] ON [claim]([PatNum],[ClaimStatus],[ClaimType],[DateSent]);