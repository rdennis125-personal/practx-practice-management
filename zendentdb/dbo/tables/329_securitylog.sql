CREATE TABLE [securitylog] ( [SecurityLogNum] bigint NOT NULL IDENTITY(1,1),
[PermType] tinyint NOT NULL DEFAULT 0,
[UserNum] bigint NOT NULL,
[LogDateTime] datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
[LogText] text DEFAULT NULL,
[PatNum] bigint NOT NULL,
[CompName] varchar(255) NOT NULL,
[FKey] bigint NOT NULL,
[LogSource] tinyint NOT NULL,
[DefNum] bigint NOT NULL,
[DefNumError] bigint NOT NULL,
[DateTPrevious] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_SecurityLogNum PRIMARY KEY ([SecurityLogNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [securitylog] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [securitylog] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_DefNum] ON [securitylog] ([DefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DefNumError] ON [securitylog] ([DefNumError]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [securitylog] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_LogDateTime] ON [securitylog] ([LogDateTime]);

GO
CREATE NONCLUSTERED INDEX [IX_PermType] ON [securitylog] ([PermType]);