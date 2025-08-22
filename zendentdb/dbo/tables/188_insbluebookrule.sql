CREATE TABLE [insbluebookrule] (
 [InsBlueBookRuleNum] bigint NOT NULL IDENTITY(1,1),
[ItemOrder] smallint NOT NULL,
[RuleType] tinyint NOT NULL,
[LimitValue] int NOT NULL,
[LimitType] tinyint NOT NULL,

CONSTRAINT PK_InsBlueBookRuleNum PRIMARY KEY ([InsBlueBookRuleNum]));

GO
