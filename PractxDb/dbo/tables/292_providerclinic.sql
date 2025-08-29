CREATE TABLE [providerclinic] ( [ProviderClinicNum] bigint NOT NULL IDENTITY(1,1),
[ProvNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[DEANum] varchar(15) NOT NULL,
[StateLicense] varchar(50) NOT NULL,
[StateRxID] varchar(255) NOT NULL,
[StateWhereLicensed] varchar(15) NOT NULL,
[CareCreditMerchantId] varchar(20) NOT NULL,
CONSTRAINT PK_ProviderClinicNum PRIMARY KEY ([ProviderClinicNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [providerclinic] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [providerclinic] ([ClinicNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 3);