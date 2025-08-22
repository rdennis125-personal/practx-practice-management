CREATE TABLE [discountplansub] ( [DiscountSubNum] bigint NOT NULL IDENTITY(1,1),
[DiscountPlanNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[DateEffective] date NOT NULL DEFAULT '0001-01-01',
[DateTerm] date NOT NULL DEFAULT '0001-01-01',
[SubNote] text NOT NULL,
CONSTRAINT PK_DiscountSubNum PRIMARY KEY ([DiscountSubNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_DiscountPlanNum] ON [discountplansub] ([DiscountPlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [discountplansub] ([PatNum]);