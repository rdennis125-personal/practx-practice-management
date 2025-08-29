CREATE TABLE [loginattempt] ( [LoginAttemptNum] bigint NOT NULL IDENTITY(1,1),
[UserName] varchar(255) NOT NULL,
[LoginType] tinyint NOT NULL,
[DateTFail] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_LoginAttemptNum PRIMARY KEY ([LoginAttemptNum])--,
--CREATE NONCLUSTERED INDEX [IX_UserName] ([UserName[(10)) 
);