CREATE TABLE [canadiannetwork] (
 [CanadianNetworkNum] bigint NOT NULL IDENTITY(1,1),
[Abbrev] varchar(20) DEFAULT '',
[Descript] varchar(255) DEFAULT '',
[CanadianTransactionPrefix] varchar(255) NOT NULL,
[CanadianIsRprHandler] tinyint NOT NULL,

CONSTRAINT PK_CanadianNetworkNum PRIMARY KEY ([CanadianNetworkNum]));

GO
