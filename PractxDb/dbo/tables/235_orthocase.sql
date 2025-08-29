CREATE TABLE [orthocase] ( [OrthoCaseNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[Fee] FLOAT(53) NOT NULL,
[FeeInsPrimary] FLOAT(53) NOT NULL,
[FeePat] FLOAT(53) NOT NULL,
[BandingDate] date NOT NULL DEFAULT '0001-01-01',
[DebondDate] date NOT NULL DEFAULT '0001-01-01',
[DebondDateExpected] date NOT NULL DEFAULT '0001-01-01',
[IsTransfer] tinyint NOT NULL,
[OrthoType] bigint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecUserNumEntry] bigint NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[IsActive] tinyint NOT NULL,
[FeeInsSecondary] FLOAT(53) NOT NULL,
CONSTRAINT PK_OrthoCaseNum PRIMARY KEY ([OrthoCaseNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [orthocase] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [orthocase] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [orthocase] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_OrthoType] ON [orthocase] ([OrthoType]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [orthocase] ([SecUserNumEntry]);