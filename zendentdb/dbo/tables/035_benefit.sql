CREATE TABLE [benefit] ( [BenefitNum] bigint NOT NULL IDENTITY(1,1),
[PlanNum] bigint NOT NULL,
[PatPlanNum] bigint NOT NULL,
[CovCatNum] bigint NOT NULL,
[BenefitType] tinyint NOT NULL DEFAULT 0,
[Percent] tinyint NOT NULL,
[MonetaryAmt] FLOAT(53) NOT NULL DEFAULT 0,
[TimePeriod] tinyint NOT NULL DEFAULT 0,
[QuantityQualifier] tinyint NOT NULL DEFAULT 0,
[Quantity] tinyint NOT NULL DEFAULT 0,
[CodeNum] bigint NOT NULL,
[CoverageLevel] int NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[CodeGroupNum] bigint NOT NULL,
[TreatArea] tinyint NOT NULL,
CONSTRAINT PK_BenefitNum PRIMARY KEY ([BenefitNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPlanNum] ON [benefit] ([PlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatPlanNum] ON [benefit] ([PatPlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CovCatNum] ON [benefit] ([CovCatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_BenefitType] ON [benefit] ([BenefitType]);

GO
CREATE NONCLUSTERED INDEX [IX_Percent] ON [benefit] ([Percent]);

GO
CREATE NONCLUSTERED INDEX [IX_MonetaryAmt] ON [benefit] ([MonetaryAmt]);

GO
CREATE NONCLUSTERED INDEX [IX_TimePeriod] ON [benefit] ([TimePeriod]);

GO
CREATE NONCLUSTERED INDEX [IX_QuantityQualifier] ON [benefit] ([QuantityQualifier]);

GO
CREATE NONCLUSTERED INDEX [IX_Quantity] ON [benefit] ([Quantity]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeNum] ON [benefit] ([CodeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CoverageLevel] ON [benefit] ([CoverageLevel]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEntry] ON [benefit] ([SecDateTEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [benefit] ([SecDateTEdit]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeGroupNum] ON [benefit] ([CodeGroupNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 33);