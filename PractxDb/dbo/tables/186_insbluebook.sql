CREATE TABLE [insbluebook] ( [InsBlueBookNum] bigint NOT NULL IDENTITY(1,1),
[ProcCodeNum] bigint NOT NULL,
[CarrierNum] bigint NOT NULL,
[PlanNum] bigint NOT NULL,
[GroupNum] varchar(25) NOT NULL,
[InsPayAmt] FLOAT(53) NOT NULL,
[AllowedOverride] FLOAT(53) NOT NULL,
[DateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ProcNum] bigint NOT NULL,
[ProcDate] date NOT NULL DEFAULT '0001-01-01',
[ClaimType] varchar(10) NOT NULL,
[ClaimNum] bigint NOT NULL,
CONSTRAINT PK_InsBlueBookNum PRIMARY KEY ([InsBlueBookNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProcCodeNum] ON [insbluebook] ([ProcCodeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CarrierNum] ON [insbluebook] ([CarrierNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PlanNum] ON [insbluebook] ([PlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [insbluebook] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClaimNum] ON [insbluebook] ([ClaimNum]);