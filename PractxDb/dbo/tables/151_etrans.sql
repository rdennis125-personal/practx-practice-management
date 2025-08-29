CREATE TABLE [etrans] ( [EtransNum] bigint NOT NULL IDENTITY(1,1),
[DateTimeTrans] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ClearingHouseNum] bigint NOT NULL,
[Etype] tinyint NOT NULL,
[ClaimNum] bigint NOT NULL,
[OfficeSequenceNumber] int NOT NULL,
[CarrierTransCounter] int NOT NULL,
[CarrierTransCounter2] int NOT NULL,
[CarrierNum] bigint NOT NULL,
[CarrierNum2] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[BatchNumber] int NOT NULL,
[AckCode] varchar(255) DEFAULT NULL,
[TransSetNum] int NOT NULL,
[Note] text DEFAULT NULL,
[EtransMessageTextNum] bigint NOT NULL,
[AckEtransNum] bigint NOT NULL,
[PlanNum] bigint NOT NULL,
[InsSubNum] bigint NOT NULL,
[TranSetId835] varchar(255) NOT NULL,
[CarrierNameRaw] varchar(60) NOT NULL,
[PatientNameRaw] varchar(133) NOT NULL,
[UserNum] bigint NOT NULL,
CONSTRAINT PK_EtransNum PRIMARY KEY ([EtransNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClaimNum] ON [etrans] ([ClaimNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CarrierNum] ON [etrans] ([CarrierNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CarrierNum2] ON [etrans] ([CarrierNum2]);

GO
CREATE NONCLUSTERED INDEX [IX_PlanNum] ON [etrans] ([PlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_InsSubNum] ON [etrans] ([InsSubNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EtransMessageTextNum] ON [etrans] ([EtransMessageTextNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [etrans] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EtransTypeAndDate] ON [etrans]([Etype],[DateTimeTrans]);

GO
CREATE NONCLUSTERED INDEX [IX_ClearingHouseNum] ON [etrans] ([ClearingHouseNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [etrans] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_AckEtransNum] ON [etrans] ([AckEtransNum]);