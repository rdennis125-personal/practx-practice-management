CREATE TABLE [userod] ( [UserNum] bigint NOT NULL IDENTITY(1,1),
[UserName] varchar(255) DEFAULT '',
[Password] varchar(255) DEFAULT '',
[UserGroupNum] bigint NOT NULL,
[EmployeeNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[IsHidden] tinyint NOT NULL,
[TaskListInBox] bigint NOT NULL,
[AnesthProvType] int NOT NULL DEFAULT 3,
[DefaultHidePopups] tinyint NOT NULL,
[PasswordIsStrong] tinyint NOT NULL,
[ClinicIsRestricted] tinyint NOT NULL,
[InboxHidePopups] tinyint NOT NULL,
[UserNumCEMT] bigint NOT NULL,
[DateTFail] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[FailedAttempts] tinyint NOT NULL,
[DomainUser] varchar(255) NOT NULL,
[IsPasswordResetRequired] tinyint NOT NULL,
[MobileWebPin] varchar(255) NOT NULL,
[MobileWebPinFailedAttempts] tinyint NOT NULL,
[DateTLastLogin] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[EClipboardClinicalPin] varchar(128) NOT NULL,
[BadgeId] varchar(255) NOT NULL,
CONSTRAINT PK_UserNum PRIMARY KEY ([UserNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserGroupNum] ON [userod] ([UserGroupNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [userod] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [userod] ([ProvNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 4);