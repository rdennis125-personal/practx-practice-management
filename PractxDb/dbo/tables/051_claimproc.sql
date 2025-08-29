CREATE TABLE [claimproc] ( [ClaimProcNum] bigint NOT NULL IDENTITY(1,1),
[ProcNum] bigint NOT NULL,
[ClaimNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[FeeBilled] FLOAT(53) NOT NULL DEFAULT 0,
[InsPayEst] FLOAT(53) NOT NULL DEFAULT 0,
[DedApplied] FLOAT(53) NOT NULL DEFAULT 0,
[Status] tinyint NOT NULL DEFAULT 0,
[InsPayAmt] FLOAT(53) NOT NULL DEFAULT 0,
[Remarks] varchar(255) DEFAULT '',
[ClaimPaymentNum] bigint NOT NULL,
[PlanNum] bigint NOT NULL,
[DateCP] date NOT NULL DEFAULT '0001-01-01',
[WriteOff] FLOAT(53) NOT NULL DEFAULT 0,
[CodeSent] varchar(15) DEFAULT '',
[AllowedOverride] FLOAT(53) NOT NULL,
[Percentage] tinyint NOT NULL DEFAULT -1,
[PercentOverride] tinyint NOT NULL DEFAULT -1,
[CopayAmt] FLOAT(53) NOT NULL DEFAULT -1,
[NoBillIns] tinyint NOT NULL DEFAULT 0,
[PaidOtherIns] FLOAT(53) NOT NULL DEFAULT -1,
[BaseEst] FLOAT(53) NOT NULL DEFAULT 0,
[CopayOverride] FLOAT(53) NOT NULL DEFAULT -1,
[ProcDate] date NOT NULL DEFAULT '0001-01-01',
[DateEntry] date NOT NULL DEFAULT '0001-01-01',
[LineNumber] tinyint NOT NULL,
[DedEst] FLOAT(53) NOT NULL,
[DedEstOverride] FLOAT(53) NOT NULL,
[InsEstTotal] FLOAT(53) NOT NULL,
[InsEstTotalOverride] FLOAT(53) NOT NULL,
[PaidOtherInsOverride] FLOAT(53) NOT NULL,
[EstimateNote] varchar(255) NOT NULL,
[WriteOffEst] FLOAT(53) NOT NULL,
[WriteOffEstOverride] FLOAT(53) NOT NULL,
[ClinicNum] bigint NOT NULL,
[InsSubNum] bigint NOT NULL,
[PaymentRow] int NOT NULL,
[PayPlanNum] bigint NOT NULL,
[ClaimPaymentTracking] bigint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[DateSuppReceived] date NOT NULL DEFAULT '0001-01-01',
[DateInsFinalized] date NOT NULL DEFAULT '0001-01-01',
[IsTransfer] tinyint NOT NULL,
[ClaimAdjReasonCodes] varchar(255) NOT NULL,
[IsOverpay] tinyint NOT NULL,
[SecurityHash] varchar(255) NOT NULL,
CONSTRAINT PK_ClaimProcNum PRIMARY KEY ([ClaimProcNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [claimproc] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexPlanNum] ON [claimproc] ([PlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexClaimNum] ON [claimproc] ([ClaimNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexProvNum] ON [claimproc] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexProcNum] ON [claimproc] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexClaimPaymentNum] ON [claimproc] ([ClaimPaymentNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [claimproc] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_InsSubNum] ON [claimproc] ([InsSubNum]);

GO
CREATE NONCLUSTERED INDEX [IX_Status] ON [claimproc] ([Status]);

GO
CREATE NONCLUSTERED INDEX [IX_PayPlanNum] ON [claimproc] ([PayPlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexCPNSIPA] ON [claimproc]([ClaimPaymentNum],[Status],[InsPayAmt]);

GO
CREATE NONCLUSTERED INDEX [IX_indexPNPD] ON [claimproc]([ProvNum],[ProcDate]);

GO
CREATE NONCLUSTERED INDEX [IX_indexPNDCP] ON [claimproc]([ProvNum],[DateCP]);

GO
CREATE NONCLUSTERED INDEX [IX_ClaimPaymentTracking] ON [claimproc] ([ClaimPaymentTracking]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [claimproc] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_indexAcctCov] ON [claimproc]([ProcNum],[PlanNum],[Status],[InsPayAmt],[InsPayEst],[WriteOff],[NoBillIns]);

GO
CREATE NONCLUSTERED INDEX [IX_DateCP] ON [claimproc] ([DateCP]);

GO
CREATE NONCLUSTERED INDEX [IX_DateSuppReceived] ON [claimproc] ([DateSuppReceived]);

GO
CREATE NONCLUSTERED INDEX [IX_indexAgingCovering] ON [claimproc]([Status],[PatNum],[DateCP],[PayPlanNum],[InsPayAmt],[WriteOff],[InsPayEst],[ProcDate],[ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexTxFinder] ON [claimproc]([InsSubNum],[ProcNum],[Status],[ProcDate],[PatNum],[InsPayAmt],[InsPayEst]);

GO
CREATE NONCLUSTERED INDEX [IX_indexOutClaimCovering] ON [claimproc]([ClaimNum],[ClaimPaymentNum],[InsPayAmt],[DateCP],[IsTransfer]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEditPN] ON [claimproc]([SecDateTEdit],[PatNum]);