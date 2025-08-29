CREATE TABLE [requiredfieldcondition] ( [RequiredFieldConditionNum] bigint NOT NULL IDENTITY(1,1),
[RequiredFieldNum] bigint NOT NULL,
[ConditionType] varchar(50) NOT NULL,
[Operator] tinyint NOT NULL,
[ConditionValue] varchar(255) NOT NULL,
[ConditionRelationship] tinyint NOT NULL,
CONSTRAINT PK_RequiredFieldConditionNum PRIMARY KEY ([RequiredFieldConditionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_RequiredFieldNum] ON [requiredfieldcondition] ([RequiredFieldNum]);