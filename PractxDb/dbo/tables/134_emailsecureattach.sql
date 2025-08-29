CREATE TABLE [emailsecureattach] ( [EmailSecureAttachNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[EmailAttachNum] bigint NOT NULL,
[EmailSecureNum] bigint NOT NULL,
[AttachmentGuid] varchar(50) NOT NULL,
[DisplayedFileName] varchar(255) NOT NULL,
[Extension] varchar(255) NOT NULL,
[DateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_EmailSecureAttachNum PRIMARY KEY ([EmailSecureAttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [emailsecureattach] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailAttachNum] ON [emailsecureattach] ([EmailAttachNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailSecureNum] ON [emailsecureattach] ([EmailSecureNum]);