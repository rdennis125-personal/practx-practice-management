CREATE TABLE [emailhostingtemplate] ( [EmailHostingTemplateNum] bigint NOT NULL IDENTITY(1,1),
[TemplateName] varchar(255) NOT NULL,
[Subject] text NOT NULL,
[BodyPlainText] VARCHAR(MAX) NOT NULL,
[BodyHTML] VARCHAR(MAX) NOT NULL,
[TemplateId] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[EmailTemplateType] varchar(255) NOT NULL,
[TemplateType] varchar(255) NOT NULL,
CONSTRAINT PK_EmailHostingTemplateNum PRIMARY KEY ([EmailHostingTemplateNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_TemplateId] ON [emailhostingtemplate] ([TemplateId]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [emailhostingtemplate] ([ClinicNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 9);