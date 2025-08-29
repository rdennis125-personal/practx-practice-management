CREATE TABLE [eserviceshortguid] ( [EServiceShortGuidNum] bigint NOT NULL IDENTITY(1,1),
[EServiceCode] varchar(255) NOT NULL,
[ShortGuid] varchar(255) NOT NULL,
[ShortURL] varchar(255) NOT NULL,
[FKey] bigint NOT NULL,
[FKeyType] varchar(255) NOT NULL,
[DateTimeExpiration] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_EServiceShortGuidNum PRIMARY KEY ([EServiceShortGuidNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [eserviceshortguid] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_ShortGuid] ON [eserviceshortguid] ([ShortGuid]);