CREATE TABLE [emailsecure] ( [EmailSecureNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[EmailMessageNum] bigint NOT NULL,
[EmailChainFK] bigint NOT NULL,
[EmailFK] bigint NOT NULL,
[DateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_EmailSecureNum PRIMARY KEY ([EmailSecureNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [emailsecure] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [emailsecure] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailMessageNum] ON [emailsecure] ([EmailMessageNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailChainFK] ON [emailsecure] ([EmailChainFK]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailFK] ON [emailsecure] ([EmailFK]);