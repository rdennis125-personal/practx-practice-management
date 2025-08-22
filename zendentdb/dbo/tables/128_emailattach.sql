CREATE TABLE [emailattach] ( [EmailAttachNum] bigint NOT NULL IDENTITY(1,1),
[EmailMessageNum] bigint NOT NULL,
[DisplayedFileName] varchar(255) DEFAULT '',
[ActualFileName] varchar(255) DEFAULT '',
[EmailTemplateNum] bigint NOT NULL,
CONSTRAINT PK_EmailAttachNum PRIMARY KEY ([EmailAttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EmailMessageNum] ON [emailattach] ([EmailMessageNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailTemplateNum] ON [emailattach] ([EmailTemplateNum]);