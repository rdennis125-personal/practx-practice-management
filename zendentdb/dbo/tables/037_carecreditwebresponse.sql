CREATE TABLE [carecreditwebresponse] ( [CareCreditWebResponseNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[PayNum] bigint NOT NULL,
[RefNumber] varchar(255) NOT NULL,
[Amount] FLOAT(53) NOT NULL,
[WebToken] varchar(255) NOT NULL,
[ProcessingStatus] varchar(255) NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimePending] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeCompleted] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeExpired] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeLastError] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[LastResponseStr] text NOT NULL,
[ClinicNum] bigint NOT NULL,
[ServiceType] varchar(255) NOT NULL,
[TransType] varchar(255) NOT NULL,
[MerchantNumber] varchar(20) NOT NULL,
[HasLogged] tinyint NOT NULL,
CONSTRAINT PK_CareCreditWebResponseNum PRIMARY KEY ([CareCreditWebResponseNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [carecreditwebresponse] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PayNum] ON [carecreditwebresponse] ([PayNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [carecreditwebresponse] ([ClinicNum]);