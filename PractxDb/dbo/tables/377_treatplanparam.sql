CREATE TABLE [treatplanparam] ( [TreatPlanParamNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[TreatPlanNum] bigint NOT NULL,
[ShowDiscount] tinyint NOT NULL,
[ShowMaxDed] tinyint NOT NULL,
[ShowSubTotals] tinyint NOT NULL,
[ShowTotals] tinyint NOT NULL,
[ShowCompleted] tinyint NOT NULL,
[ShowFees] tinyint NOT NULL,
[ShowIns] tinyint NOT NULL,
CONSTRAINT PK_TreatPlanParamNum PRIMARY KEY ([TreatPlanParamNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [treatplanparam] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TreatPlanNum] ON [treatplanparam] ([TreatPlanNum]);