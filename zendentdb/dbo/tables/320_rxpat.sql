CREATE TABLE [rxpat] ( [RxNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[RxDate] date NOT NULL DEFAULT '0000-00-00',
[Drug] varchar(255) DEFAULT '',
[Sig] varchar(255) DEFAULT '',
[Disp] varchar(255) DEFAULT '',
[Refills] varchar(30) DEFAULT '',
[ProvNum] bigint NOT NULL,
[Notes] varchar(255) DEFAULT '',
[PharmacyNum] bigint NOT NULL,
[IsControlled] tinyint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[SendStatus] tinyint NOT NULL,
[RxCui] bigint NOT NULL,
[DosageCode] varchar(255) NOT NULL,
[ErxGuid] varchar(40) NOT NULL,
[IsErxOld] tinyint NOT NULL,
[ErxPharmacyInfo] varchar(255) NOT NULL,
[IsProcRequired] tinyint NOT NULL,
[ProcNum] bigint NOT NULL,
[DaysOfSupply] FLOAT(53) DEFAULT NULL,
[PatientInstruction] text NOT NULL,
[ClinicNum] bigint NOT NULL,
[UserNum] bigint NOT NULL,
[RxType] tinyint NOT NULL,
CONSTRAINT PK_RxNum PRIMARY KEY ([RxNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_RxCui] ON [rxpat] ([RxCui]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [rxpat] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [rxpat] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [rxpat] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [rxpat] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNumRxType] ON [rxpat] ([PatNum],[RxType]);