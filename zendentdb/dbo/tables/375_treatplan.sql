CREATE TABLE [treatplan] ( [TreatPlanNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateTP] date NOT NULL DEFAULT '0001-01-01',
[Heading] varchar(255) DEFAULT '',
[Note] text DEFAULT NULL,
[Signature] text DEFAULT NULL,
[SigIsTopaz] tinyint NOT NULL,
[ResponsParty] bigint NOT NULL,
[DocNum] bigint NOT NULL,
[TPStatus] tinyint NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[UserNumPresenter] bigint NOT NULL,
[TPType] tinyint NOT NULL,
[SignaturePractice] text NOT NULL,
[DateTSigned] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTPracticeSigned] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SignatureText] varchar(255) NOT NULL,
[SignaturePracticeText] varchar(255) NOT NULL,
[MobileAppDeviceNum] bigint NOT NULL,
CONSTRAINT PK_TreatPlanNum PRIMARY KEY ([TreatPlanNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexPatNum] ON [treatplan] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DocNum] ON [treatplan] ([DocNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [treatplan] ([SecUserNumEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNumPresenter] ON [treatplan] ([UserNumPresenter]);

GO
CREATE NONCLUSTERED INDEX [IX_MobileAppDeviceNum] ON [treatplan] ([MobileAppDeviceNum]);