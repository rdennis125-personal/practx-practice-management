CREATE TABLE [clinic] ( [ClinicNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[Address] varchar(255) DEFAULT '',
[Address2] varchar(255) DEFAULT '',
[City] varchar(255) DEFAULT '',
[State] varchar(255) DEFAULT '',
[Zip] varchar(255) DEFAULT '',
[Phone] varchar(255) DEFAULT '',
[BankNumber] varchar(255) DEFAULT '',
[DefaultPlaceService] tinyint NOT NULL DEFAULT 0,
[InsBillingProv] bigint NOT NULL,
[Fax] varchar(50) NOT NULL,
[EmailAddressNum] bigint NOT NULL,
[DefaultProv] bigint NOT NULL,
[SmsContractDate] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SmsMonthlyLimit] FLOAT(53) NOT NULL,
[IsMedicalOnly] tinyint NOT NULL,
[BillingAddress] varchar(255) NOT NULL,
[BillingAddress2] varchar(255) NOT NULL,
[BillingCity] varchar(255) NOT NULL,
[BillingState] varchar(255) NOT NULL,
[BillingZip] varchar(255) NOT NULL,
[PayToAddress] varchar(255) NOT NULL,
[PayToAddress2] varchar(255) NOT NULL,
[PayToCity] varchar(255) NOT NULL,
[PayToState] varchar(255) NOT NULL,
[PayToZip] varchar(255) NOT NULL,
[UseBillAddrOnClaims] tinyint NOT NULL,
[Region] bigint NOT NULL,
[ItemOrder] int NOT NULL,
[IsInsVerifyExcluded] tinyint NOT NULL,
[Abbr] varchar(255) NOT NULL,
[MedLabAccountNum] varchar(16) NOT NULL,
[IsConfirmEnabled] tinyint NOT NULL,
[IsConfirmDefault] tinyint NOT NULL,
[IsNewPatApptExcluded] tinyint NOT NULL,
[IsHidden] tinyint NOT NULL,
[ExternalID] bigint NOT NULL,
[SchedNote] varchar(255) NOT NULL,
[HasProcOnRx] tinyint NOT NULL,
[TimeZone] varchar(75) NOT NULL,
[EmailAliasOverride] varchar(255) NOT NULL,
CONSTRAINT PK_ClinicNum PRIMARY KEY ([ClinicNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EmailAddressNum] ON [clinic] ([EmailAddressNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DefaultProv] ON [clinic] ([DefaultProv]);

GO
CREATE NONCLUSTERED INDEX [IX_Region] ON [clinic] ([Region]);

GO
CREATE NONCLUSTERED INDEX [IX_ExternalID] ON [clinic] ([ExternalID]);

GO
CREATE NONCLUSTERED INDEX [IX_InsBillingProv] ON [clinic] ([InsBillingProv]);