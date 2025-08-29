CREATE TABLE [emailtemplate] ( [EmailTemplateNum] bigint NOT NULL IDENTITY(1,1),
[Subject] text DEFAULT NULL,
[BodyText] text DEFAULT NULL,
[Description] text NOT NULL,
[TemplateType] tinyint NOT NULL,
CONSTRAINT PK_EmailTemplateNum PRIMARY KEY ([EmailTemplateNum]) );