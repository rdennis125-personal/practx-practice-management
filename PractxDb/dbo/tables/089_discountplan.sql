CREATE TABLE [discountplan] ( [DiscountPlanNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) NOT NULL,
[FeeSchedNum] bigint NOT NULL,
[DefNum] bigint NOT NULL,
[IsHidden] tinyint NOT NULL,
[PlanNote] text NOT NULL,
[ExamFreqLimit] int NOT NULL,
[XrayFreqLimit] int NOT NULL,
[ProphyFreqLimit] int NOT NULL,
[FluorideFreqLimit] int NOT NULL,
[PerioFreqLimit] int NOT NULL,
[LimitedExamFreqLimit] int NOT NULL,
[PAFreqLimit] int NOT NULL,
[AnnualMax] FLOAT(53) NOT NULL DEFAULT -1,
CONSTRAINT PK_DiscountPlanNum PRIMARY KEY ([DiscountPlanNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_FeeSchedNum] ON [discountplan] ([FeeSchedNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DefNum] ON [discountplan] ([DefNum]);