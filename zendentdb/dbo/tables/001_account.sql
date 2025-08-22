CREATE TABLE [account] 
( 
[AccountNum] bigint NOT NULL IDENTITY(1,1),

[Description] varchar(255) NOT NULL,

[AcctType] tinyint NOT NULL DEFAULT 0,

[BankNumber] varchar(255) NOT NULL,

[Inactive] tinyint NOT NULL DEFAULT 0,

[AccountColor] int NOT NULL DEFAULT 0,

[IsRetainedEarnings] tinyint NOT NULL,

CONSTRAINT PK_AccountNum PRIMARY KEY ([AccountNum]));