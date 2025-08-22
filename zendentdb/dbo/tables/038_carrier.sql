CREATE TABLE [carrier] ( [CarrierNum] bigint NOT NULL IDENTITY(1,1),
[CarrierName] varchar(255) DEFAULT '',
[Address] varchar(255) DEFAULT '',
[Address2] varchar(255) DEFAULT '',
[City] varchar(255) DEFAULT '',
[State] varchar(255) DEFAULT '',
[Zip] varchar(255) DEFAULT '',
[Phone] varchar(255) DEFAULT '',
[ElectID] varchar(255) DEFAULT '',
[NoSendElect] tinyint NOT NULL DEFAULT 0,
[IsCDA] tinyint NOT NULL,
[CDAnetVersion] varchar(100) DEFAULT '',
[CanadianNetworkNum] bigint NOT NULL,
[IsHidden] tinyint NOT NULL,
[CanadianEncryptionMethod] tinyint NOT NULL,
[CanadianSupportedTypes] int NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[TIN] varchar(255) NOT NULL,
[CarrierGroupName] bigint NOT NULL,
[ApptTextBackColor] int NOT NULL,
[IsCoinsuranceInverted] tinyint NOT NULL,
[TrustedEtransFlags] tinyint NOT NULL,
[CobInsPaidBehaviorOverride] tinyint NOT NULL,
[EraAutomationOverride] tinyint NOT NULL,
[OrthoInsPayConsolidate] tinyint NOT NULL,
CONSTRAINT PK_CarrierNum PRIMARY KEY ([CarrierNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [carrier] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_CarrierNumName] ON [carrier] ([CarrierNum],[CarrierName]);

GO
CREATE NONCLUSTERED INDEX [IX_CanadianNetworkNum] ON [carrier] ([CanadianNetworkNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CarrierGroupName] ON [carrier] ([CarrierGroupName]);

--DBCC CHECKIDENT ('tablename', RESEED, 6);