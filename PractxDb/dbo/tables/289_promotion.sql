CREATE TABLE [promotion] ( [PromotionNum] bigint NOT NULL IDENTITY(1,1),
[PromotionName] varchar(255) NOT NULL,
[DateTimeCreated] date NOT NULL DEFAULT '0001-01-01',
[ClinicNum] bigint NOT NULL,
[TypePromotion] tinyint NOT NULL,
CONSTRAINT PK_PromotionNum PRIMARY KEY ([PromotionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [promotion] ([ClinicNum]);