CREATE TABLE [insplanpreference] ( [InsPlanPrefNum] bigint NOT NULL IDENTITY(1,1),
[PlanNum] bigint NOT NULL,
[FKey] bigint NOT NULL,
[FKeyType] tinyint NOT NULL,
[ValueString] text NOT NULL,
CONSTRAINT PK_InsPlanPrefNum PRIMARY KEY ([InsPlanPrefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PlanNum] ON [insplanpreference] ([PlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [insplanpreference] ([FKey]);