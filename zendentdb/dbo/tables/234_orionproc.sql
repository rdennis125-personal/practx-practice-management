CREATE TABLE [orionproc] ( [OrionProcNum] bigint NOT NULL IDENTITY(1,1),
[ProcNum] bigint NOT NULL,
[DPC] tinyint NOT NULL,
[DateScheduleBy] date NOT NULL DEFAULT '0001-01-01',
[DateStopClock] date NOT NULL DEFAULT '0001-01-01',
[Status2] int NOT NULL,
[IsOnCall] tinyint NOT NULL,
[IsEffectiveComm] tinyint NOT NULL,
[IsRepair] tinyint NOT NULL,
[DPCpost] tinyint NOT NULL,
CONSTRAINT PK_OrionProcNum PRIMARY KEY ([OrionProcNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [orionproc] ([ProcNum]);