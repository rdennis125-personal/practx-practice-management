CREATE TABLE [reminderrule] ( [ReminderRuleNum] bigint NOT NULL IDENTITY(1,1),
[ReminderCriterion] tinyint NOT NULL,
[CriterionFK] bigint NOT NULL,
[CriterionValue] varchar(255) NOT NULL,
[Message] varchar(255) NOT NULL,
CONSTRAINT PK_ReminderRuleNum PRIMARY KEY ([ReminderRuleNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_CriterionFK] ON [reminderrule] ([CriterionFK]);