CREATE TABLE [patientportalinvite] ( [PatientPortalInviteNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ApptNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TSPrior] bigint NOT NULL,
[SendStatus] tinyint NOT NULL,
[MessageFk] bigint NOT NULL,
[ResponseDescript] text NOT NULL,
[MessageType] tinyint NOT NULL,
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ApptReminderRuleNum] bigint NOT NULL,
[ApptDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_PatientPortalInviteNum PRIMARY KEY ([PatientPortalInviteNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [patientportalinvite] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_AptNum] ON [patientportalinvite] ([ApptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [patientportalinvite] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailMessageNum] ON [patientportalinvite] ([MessageFk]);

GO
CREATE NONCLUSTERED INDEX [IX_MessageFk] ON [patientportalinvite] ([MessageFk]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptReminderRuleNum] ON [patientportalinvite] ([ApptReminderRuleNum]);