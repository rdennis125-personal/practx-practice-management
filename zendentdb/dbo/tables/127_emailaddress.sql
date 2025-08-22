CREATE TABLE [emailaddress] ( [EmailAddressNum] bigint NOT NULL IDENTITY(1,1),
[SMTPserver] varchar(255) NOT NULL,
[EmailUsername] varchar(255) NOT NULL,
[EmailPassword] varchar(255) NOT NULL,
[ServerPort] int NOT NULL,
[UseSSL] tinyint NOT NULL,
[SenderAddress] varchar(255) NOT NULL,
[Pop3ServerIncoming] varchar(255) NOT NULL,
[ServerPortIncoming] int NOT NULL,
[UserNum] bigint NOT NULL,
[AccessToken] varchar(2000) NOT NULL,
[RefreshToken] text NOT NULL,
[DownloadInbox] tinyint NOT NULL,
[QueryString] varchar(1000) NOT NULL,
[AuthenticationType] tinyint NOT NULL,
CONSTRAINT PK_EmailAddressNum PRIMARY KEY ([EmailAddressNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [emailaddress] ([UserNum]);