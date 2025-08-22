CREATE TABLE [orthochartrow] ( [OrthoChartRowNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateTimeService] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[UserNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[Signature] text NOT NULL,
CONSTRAINT PK_OrthoChartRowNum PRIMARY KEY ([OrthoChartRowNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [orthochartrow] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [orthochartrow] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [orthochartrow] ([ProvNum]);