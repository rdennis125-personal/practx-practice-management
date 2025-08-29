CREATE TABLE [provider] ( [ProvNum] bigint NOT NULL IDENTITY(1,1),
[Abbr] varchar(255) DEFAULT NULL,
[ItemOrder] smallint NOT NULL DEFAULT 0,
[LName] varchar(100) DEFAULT '',
[FName] varchar(100) DEFAULT '',
[MI] varchar(100) DEFAULT '',
[Suffix] varchar(100) DEFAULT '',
[FeeSched] bigint NOT NULL,
[Specialty] bigint NOT NULL,
[SSN] varchar(12) DEFAULT '',
[StateLicense] varchar(15) DEFAULT '',
[DEANum] varchar(15) DEFAULT '',
[IsSecondary] tinyint NOT NULL DEFAULT 0,
[ProvColor] int NOT NULL DEFAULT 0,
[IsHidden] tinyint NOT NULL DEFAULT 0,
[UsingTIN] tinyint NOT NULL DEFAULT 0,
[BlueCrossID] varchar(25) DEFAULT '',
[SigOnFile] tinyint NOT NULL DEFAULT 1,
[MedicaidID] varchar(20) DEFAULT '',
[OutlineColor] int NOT NULL DEFAULT 0,
[SchoolClassNum] bigint NOT NULL,
[NationalProvID] varchar(255) DEFAULT '',
[CanadianOfficeNum] varchar(100) DEFAULT '',
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[AnesthProvType] bigint NOT NULL,
[TaxonomyCodeOverride] varchar(255) NOT NULL,
[IsCDAnet] tinyint NOT NULL,
[EcwID] varchar(255) NOT NULL,
[StateRxID] varchar(255) NOT NULL,
[IsNotPerson] tinyint NOT NULL,
[StateWhereLicensed] varchar(50) NOT NULL,
[EmailAddressNum] bigint NOT NULL,
[IsInstructor] tinyint NOT NULL,
[EhrMuStage] int NOT NULL,
[ProvNumBillingOverride] bigint NOT NULL,
[CustomID] varchar(255) NOT NULL,
[ProvStatus] tinyint NOT NULL,
[IsHiddenReport] tinyint NOT NULL,
[IsErxEnabled] tinyint NOT NULL,
[Birthdate] date NOT NULL DEFAULT '0001-01-01',
[SchedNote] varchar(255) NOT NULL,
[WebSchedDescript] varchar(500) NOT NULL,
[WebSchedImageLocation] varchar(255) NOT NULL,
[HourlyProdGoalAmt] FLOAT(53) NOT NULL,
[DateTerm] date NOT NULL DEFAULT '0001-01-01',
[PreferredName] varchar(100) NOT NULL,
CONSTRAINT PK_ProvNum PRIMARY KEY ([ProvNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EmailAddressNum] ON [provider] ([EmailAddressNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNumBillingOverride] ON [provider] ([ProvNumBillingOverride]);

GO
CREATE NONCLUSTERED INDEX [IX_FeeSched] ON [provider] ([FeeSched]);

--DBCC CHECKIDENT ('tablename', RESEED, 3);