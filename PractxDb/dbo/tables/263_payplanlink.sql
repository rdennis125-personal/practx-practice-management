CREATE TABLE [payplanlink] ( [PayPlanLinkNum] bigint NOT NULL IDENTITY(1,1),
[PayPlanNum] bigint NOT NULL,
[LinkType] tinyint NOT NULL,
[FKey] bigint NOT NULL,
[AmountOverride] FLOAT(53) NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_PayPlanLinkNum PRIMARY KEY ([PayPlanLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PayPlanNum] ON [payplanlink] ([PayPlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [payplanlink] ([FKey]);