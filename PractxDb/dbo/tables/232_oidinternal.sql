CREATE TABLE [oidinternal] ( [OIDInternalNum] bigint NOT NULL IDENTITY(1,1),
[IDType] varchar(255) NOT NULL,
[IDRoot] varchar(255) NOT NULL,
CONSTRAINT PK_OIDInternalNum PRIMARY KEY ([OIDInternalNum]) );