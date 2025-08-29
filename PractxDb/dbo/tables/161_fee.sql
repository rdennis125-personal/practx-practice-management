CREATE TABLE [fee] ( [FeeNum] bigint NOT NULL IDENTITY(1,1),
[Amount] FLOAT(53) NOT NULL DEFAULT 0,
[OldCode] varchar(15) COLLATE Latin1_General_100_CI_AS_SC_UTF8 NOT NULL DEFAULT '',
[FeeSched] bigint NOT NULL,
[UseDefaultFee] tinyint NOT NULL DEFAULT 0,
[UseDefaultCov] tinyint NOT NULL DEFAULT 0,
[CodeNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_FeeNum PRIMARY KEY ([FeeNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexADACode] ON [fee] ([OldCode]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeNum] ON [fee] ([CodeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [fee] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [fee] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [fee] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FeeSchedCodeClinicProv] ON [fee] ([FeeSched],[CodeNum],[ClinicNum],[ProvNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 35);