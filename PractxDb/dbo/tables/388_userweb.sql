CREATE TABLE [userweb] ( [UserWebNum] bigint NOT NULL IDENTITY(1,1),
[FKey] bigint NOT NULL,
[FKeyType] tinyint NOT NULL,
[UserName] varchar(255) NOT NULL,
[Password] varchar(255) NOT NULL,
[PasswordResetCode] varchar(255) NOT NULL,
[RequireUserNameChange] tinyint NOT NULL,
[DateTimeLastLogin] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[RequirePasswordChange] tinyint NOT NULL,
CONSTRAINT PK_UserWebNum PRIMARY KEY ([UserWebNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [userweb] ([FKey]);