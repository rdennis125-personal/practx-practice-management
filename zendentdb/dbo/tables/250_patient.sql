CREATE TABLE [patient] ( [PatNum] bigint NOT NULL IDENTITY(1,1),
[LName] varchar(100) DEFAULT '',
[FName] varchar(100) DEFAULT '',
[MiddleI] varchar(100) DEFAULT '',
[Preferred] varchar(100) DEFAULT '',
[PatStatus] tinyint NOT NULL DEFAULT 0,
[Gender] tinyint NOT NULL DEFAULT 0,
[Position] tinyint NOT NULL DEFAULT 0,
[Birthdate] date NOT NULL DEFAULT '0001-01-01',
[SSN] varchar(100) DEFAULT '',
[Address] varchar(100) DEFAULT '',
[Address2] varchar(100) DEFAULT '',
[City] varchar(100) DEFAULT '',
[State] varchar(100) DEFAULT '',
[Zip] varchar(100) DEFAULT '',
[HmPhone] varchar(30) DEFAULT '',
[WkPhone] varchar(30) DEFAULT '',
[WirelessPhone] varchar(30) DEFAULT '',
[Guarantor] bigint NOT NULL,
[CreditType] char(1) DEFAULT '',
[Email] varchar(100) DEFAULT '',
[Salutation] varchar(100) DEFAULT '',
[EstBalance] FLOAT(53) NOT NULL DEFAULT 0,
[PriProv] bigint NOT NULL,
[SecProv] bigint NOT NULL,
[FeeSched] bigint NOT NULL,
[BillingType] bigint NOT NULL,
[ImageFolder] varchar(100) DEFAULT '',
[AddrNote] text DEFAULT NULL,
[FamFinUrgNote] text DEFAULT NULL,
[MedUrgNote] varchar(255) DEFAULT '',
[ApptModNote] varchar(255) DEFAULT '',
[StudentStatus] char(1) DEFAULT '',
[SchoolName] varchar(255) NOT NULL,
[ChartNumber] varchar(20) DEFAULT '',
[MedicaidID] varchar(20) DEFAULT '',
[Bal_0_30] FLOAT(53) NOT NULL DEFAULT 0,
[Bal_31_60] FLOAT(53) NOT NULL DEFAULT 0,
[Bal_61_90] FLOAT(53) NOT NULL DEFAULT 0,
[BalOver90] FLOAT(53) NOT NULL DEFAULT 0,
[InsEst] FLOAT(53) NOT NULL DEFAULT 0,
[BalTotal] FLOAT(53) NOT NULL DEFAULT 0,
[EmployerNum] bigint NOT NULL,
[EmploymentNote] varchar(255) DEFAULT '',
[County] varchar(255) DEFAULT '',
[GradeLevel] tinyint NOT NULL DEFAULT 0,
[Urgency] tinyint NOT NULL DEFAULT 0,
[DateFirstVisit] date NOT NULL DEFAULT '0001-01-01',
[ClinicNum] bigint NOT NULL,
[HasIns] varchar(255) DEFAULT '',
[TrophyFolder] varchar(255) DEFAULT '',
[PlannedIsDone] tinyint NOT NULL DEFAULT 0,
[Premed] tinyint NOT NULL,
[Ward] varchar(255) DEFAULT '',
[PreferConfirmMethod] tinyint NOT NULL,
[PreferContactMethod] tinyint NOT NULL,
[PreferRecallMethod] tinyint NOT NULL,
[SchedBeforeTime] time DEFAULT NULL,
[SchedAfterTime] time DEFAULT NULL,
[SchedDayOfWeek] tinyint NOT NULL,
[Language] varchar(100) DEFAULT '',
[AdmitDate] date NOT NULL DEFAULT '0001-01-01',
[Title] varchar(15) DEFAULT NULL,
[PayPlanDue] FLOAT(53) NOT NULL,
[SiteNum] bigint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[ResponsParty] bigint NOT NULL,
[CanadianEligibilityCode] tinyint NOT NULL,
[AskToArriveEarly] int NOT NULL,
[PreferContactConfidential] tinyint NOT NULL,
[SuperFamily] bigint NOT NULL,
[TxtMsgOk] tinyint NOT NULL,
[SmokingSnoMed] varchar(32) NOT NULL,
[Country] varchar(255) NOT NULL,
[DateTimeDeceased] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[BillingCycleDay] int NOT NULL DEFAULT 1,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[HasSuperBilling] tinyint NOT NULL,
[PatNumCloneFrom] bigint NOT NULL,
[DiscountPlanNum] bigint NOT NULL,
[HasSignedTil] tinyint NOT NULL,
[ShortCodeOptIn] tinyint NOT NULL,
[SecurityHash] varchar(255) NOT NULL,
CONSTRAINT PK_Patient_PatNum PRIMARY KEY ([PatNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexLName] ON [patient] ([LName]);

GO
CREATE NONCLUSTERED INDEX [IX_indexFName] ON [patient] ([FName]);

GO
CREATE NONCLUSTERED INDEX [IX_indexLFName] ON [patient] ([LName],[FName]);

GO
CREATE NONCLUSTERED INDEX [IX_indexGuarantor] ON [patient] ([Guarantor]);

GO
CREATE NONCLUSTERED INDEX [IX_ResponsParty] ON [patient] ([ResponsParty]);

GO
CREATE NONCLUSTERED INDEX [IX_SuperFamily] ON [patient] ([SuperFamily]);

GO
CREATE NONCLUSTERED INDEX [IX_SiteNum] ON [patient] ([SiteNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatStatus] ON [patient] ([PatStatus]);

GO
CREATE NONCLUSTERED INDEX [IX_Email] ON [patient] ([Email]);

GO
CREATE NONCLUSTERED INDEX [IX_ChartNumber] ON [patient] ([ChartNumber]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [patient] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_HmPhone] ON [patient] ([HmPhone]);

GO
CREATE NONCLUSTERED INDEX [IX_WirelessPhone] ON [patient] ([WirelessPhone]);

GO
CREATE NONCLUSTERED INDEX [IX_WkPhone] ON [patient] ([WkPhone]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNumCloneFrom] ON [patient] ([PatNumCloneFrom]);

GO
CREATE NONCLUSTERED INDEX [IX_DiscountPlanNum] ON [patient] ([DiscountPlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FeeSched] ON [patient] ([FeeSched]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateEntry] ON [patient] ([SecDateEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_PriProv] ON [patient] ([PriProv]);

GO
CREATE NONCLUSTERED INDEX [IX_SecProv] ON [patient] ([SecProv]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicPatStatus] ON [patient] ([ClinicNum],[PatStatus]);

GO
CREATE NONCLUSTERED INDEX [IX_BirthdateStatus] ON [patient] ([Birthdate],[PatStatus]);