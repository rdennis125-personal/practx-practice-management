CREATE TABLE [electid] (
 [ElectIDNum] bigint NOT NULL IDENTITY(1,1),
[PayorID] varchar(255) DEFAULT '',
[CarrierName] varchar(255) DEFAULT '',
[IsMedicaid] tinyint NOT NULL DEFAULT 0,
[ProviderTypes] varchar(255) DEFAULT '',
[Comments] text DEFAULT NULL,
[CommBridge] tinyint NOT NULL,
[Attributes] varchar(255) NOT NULL,

CONSTRAINT PK_ElectIDNum PRIMARY KEY ([ElectIDNum]));

GO
