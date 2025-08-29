CREATE TABLE [providerident] ( [ProviderIdentNum] bigint NOT NULL IDENTITY(1,1),
[ProvNum] bigint NOT NULL,
[PayorID] varchar(255) DEFAULT '',
[SuppIDType] tinyint NOT NULL DEFAULT 0,
[IDNumber] varchar(255) DEFAULT '',
CONSTRAINT PK_ProviderIdentNum PRIMARY KEY ([ProviderIdentNum]) );