CREATE TABLE [registrationkey] ( [RegistrationKeyNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[RegKey] varchar(4000) DEFAULT NULL,
[Note] varchar(4000) DEFAULT NULL,
[DateStarted] date NOT NULL,
[DateDisabled] date NOT NULL,
[DateEnded] date NOT NULL,
[IsForeign] tinyint NOT NULL,
[UsesServerVersion] tinyint NOT NULL,
[IsFreeVersion] tinyint NOT NULL,
[IsOnlyForTesting] tinyint NOT NULL,
[VotesAllotted] int NOT NULL,
[IsResellerCustomer] tinyint NOT NULL,
[HasEarlyAccess] tinyint NOT NULL,
[DateTBackupScheduled] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[BackupPassCode] varchar(32) NOT NULL,
CONSTRAINT PK_RegistrationKeyNum PRIMARY KEY ([RegistrationKeyNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [registrationkey] ([PatNum]);