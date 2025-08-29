CREATE TABLE [orthochart] ( [OrthoChartNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateService] date NOT NULL DEFAULT '0001-01-01',
[FieldName] varchar(255) NOT NULL,
[FieldValue] text NOT NULL,
[UserNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[OrthoChartRowNum] bigint NOT NULL,
CONSTRAINT PK_OrthoChartNum PRIMARY KEY ([OrthoChartNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [orthochart] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [orthochart] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_OrthoChartRowNum] ON [orthochart] ([OrthoChartRowNum]);