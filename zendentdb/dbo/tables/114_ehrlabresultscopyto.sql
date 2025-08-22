CREATE TABLE [ehrlabresultscopyto] ( [EhrLabResultsCopyToNum] bigint NOT NULL IDENTITY(1,1),
[EhrLabNum] bigint NOT NULL,
[CopyToID] varchar(255) NOT NULL,
[CopyToLName] varchar(255) NOT NULL,
[CopyToFName] varchar(255) NOT NULL,
[CopyToMiddleNames] varchar(255) NOT NULL,
[CopyToSuffix] varchar(255) NOT NULL,
[CopyToPrefix] varchar(255) NOT NULL,
[CopyToAssigningAuthorityNamespaceID] varchar(255) NOT NULL,
[CopyToAssigningAuthorityUniversalID] varchar(255) NOT NULL,
[CopyToAssigningAuthorityIDType] varchar(255) NOT NULL,
[CopyToNameTypeCode] varchar(255) NOT NULL,
[CopyToIdentifierTypeCode] varchar(255) NOT NULL,
CONSTRAINT PK_EhrLabResultsCopyToNum PRIMARY KEY ([EhrLabResultsCopyToNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EhrLabNum] ON [ehrlabresultscopyto] ([EhrLabNum]);