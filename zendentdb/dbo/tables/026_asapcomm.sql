CREATE TABLE [asapcomm] ( [AsapCommNum] bigint NOT NULL IDENTITY(1,1),
[FKey] bigint NOT NULL,
[FKeyType] tinyint NOT NULL,
[ScheduleNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[ShortGUID] varchar(255) NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeExpire] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeSmsScheduled] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SmsSendStatus] tinyint NOT NULL,
[EmailSendStatus] tinyint NOT NULL,
[DateTimeSmsSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeEmailSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[EmailMessageNum] bigint NOT NULL,
[ResponseStatus] tinyint NOT NULL,
[DateTimeOrig] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TemplateText] text NOT NULL,
[TemplateEmail] text NOT NULL,
[TemplateEmailSubj] varchar(100) NOT NULL,
[Note] text NOT NULL,
[GuidMessageToMobile] text NOT NULL,
[EmailTemplateType] varchar(255) NOT NULL,
CONSTRAINT PK_AsapCommNum PRIMARY KEY ([AsapCommNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [asapcomm] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_ScheduleNum] ON [asapcomm] ([ScheduleNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [asapcomm] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [asapcomm] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailMessageNum] ON [asapcomm] ([EmailMessageNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SmsSendStatus] ON [asapcomm] ([SmsSendStatus]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailSendStatus] ON [asapcomm] ([EmailSendStatus]);

GO
CREATE NONCLUSTERED INDEX [IX_ShortGUID] ON [asapcomm] ([ShortGUID]);