CREATE TABLE [promotionlog] ( [PromotionLogNum] bigint NOT NULL IDENTITY(1,1),
[PromotionNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[MessageFk] bigint NOT NULL,
[EmailHostingFK] bigint NOT NULL,
[DateTimeSent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[PromotionStatus] tinyint NOT NULL,
[ClinicNum] bigint NOT NULL,
[SendStatus] tinyint NOT NULL,
[MessageType] tinyint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ResponseDescript] text NOT NULL,
[ApptReminderRuleNum] bigint NOT NULL,
CONSTRAINT PK_PromotionLogNum PRIMARY KEY ([PromotionLogNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PromotionNum] ON [promotionlog] ([PromotionNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [promotionlog] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailMessageNum] ON [promotionlog] ([MessageFk]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailHostingFK] ON [promotionlog] ([EmailHostingFK]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [promotionlog] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MessageFk] ON [promotionlog] ([MessageFk]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptReminderRuleNum] ON [promotionlog] ([ApptReminderRuleNum]);