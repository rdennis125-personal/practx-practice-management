CREATE TABLE [claimvalcodelog] ( [ClaimValCodeLogNum] bigint NOT NULL IDENTITY(1,1),
[ClaimNum] bigint NOT NULL,
[ClaimField] varchar(5) NOT NULL,
[ValCode] char(2) NOT NULL,
[ValAmount] FLOAT(53) NOT NULL,
[Ordinal] int NOT NULL,
CONSTRAINT PK_ClaimValCodeLogNum PRIMARY KEY ([ClaimValCodeLogNum]) );