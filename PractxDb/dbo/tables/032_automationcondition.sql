CREATE TABLE [automationcondition] ( [AutomationConditionNum] bigint NOT NULL IDENTITY(1,1),
[AutomationNum] bigint NOT NULL,
[CompareField] tinyint NOT NULL,
[Comparison] tinyint NOT NULL,
[CompareString] varchar(255) NOT NULL,
CONSTRAINT PK_AutomationConditionNum PRIMARY KEY ([AutomationConditionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_AutomationNum] ON [automationcondition] ([AutomationNum]);