CREATE TABLE [apptreminderrule] ( [ApptReminderRuleNum] bigint NOT NULL IDENTITY(1,1),
[TypeCur] tinyint NOT NULL,
[TSPrior] bigint NOT NULL,
[SendOrder] varchar(255) NOT NULL,
[IsSendAll] tinyint NOT NULL,
[TemplateSMS] text NOT NULL,
[TemplateEmailSubject] text NOT NULL,
[TemplateEmail] text NOT NULL,
[ClinicNum] bigint NOT NULL,
[TemplateSMSAggShared] text NOT NULL,
[TemplateSMSAggPerAppt] text NOT NULL,
[TemplateEmailSubjAggShared] text NOT NULL,
[TemplateEmailAggShared] text NOT NULL,
[TemplateEmailAggPerAppt] text NOT NULL,
[DoNotSendWithin] bigint NOT NULL,
[IsEnabled] tinyint NOT NULL,
[TemplateAutoReply] text NOT NULL,
[TemplateAutoReplyAgg] text NOT NULL,
[IsAutoReplyEnabled] tinyint NOT NULL,
[Language] varchar(255) NOT NULL,
[TemplateComeInMessage] text NOT NULL,
[EmailTemplateType] varchar(255) NOT NULL,
[AggEmailTemplateType] varchar(255) NOT NULL,
[IsSendForMinorsBirthday] tinyint NOT NULL,
[EmailHostingTemplateNum] bigint NOT NULL,
[MinorAge] int NOT NULL,
[TemplateFailureAutoReply] text NOT NULL,
[SendMultipleInvites] tinyint NOT NULL,
[TimeSpanMultipleInvites] bigint NOT NULL,
CONSTRAINT PK_ApptReminderRuleNum PRIMARY KEY ([ApptReminderRuleNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_TSPrior] ON [apptreminderrule] ([TSPrior]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [apptreminderrule] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailHostingTemplateNum] ON [apptreminderrule] ([EmailHostingTemplateNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 4);