CREATE TABLE [claimsnapshot] ( [ClaimSnapshotNum] bigint NOT NULL IDENTITY(1,1),
[ProcNum] bigint NOT NULL,
[ClaimType] varchar(255) NOT NULL,
[Writeoff] FLOAT(53) NOT NULL,
[InsPayEst] FLOAT(53) NOT NULL,
[Fee] FLOAT(53) NOT NULL,
[DateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ClaimProcNum] bigint NOT NULL,
[SnapshotTrigger] tinyint NOT NULL,
CONSTRAINT PK_ClaimSnapshotNum PRIMARY KEY ([ClaimSnapshotNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [claimsnapshot] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClaimProcNum] ON [claimsnapshot] ([ClaimProcNum]);