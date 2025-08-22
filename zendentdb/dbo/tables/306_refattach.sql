CREATE TABLE [refattach] ( [RefAttachNum] bigint NOT NULL IDENTITY(1,1),
[ReferralNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[ItemOrder] smallint NOT NULL DEFAULT 0,
[RefDate] date NOT NULL DEFAULT '0000-00-00',
[RefType] tinyint NOT NULL,
[RefToStatus] tinyint NOT NULL,
[Note] text DEFAULT NULL,
[IsTransitionOfCare] tinyint NOT NULL,
[ProcNum] bigint NOT NULL,
[DateProcComplete] date NOT NULL DEFAULT '0001-01-01',
[ProvNum] bigint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_RefAttachNum PRIMARY KEY ([RefAttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [refattach]([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [refattach]([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [refattach]([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ReferralNum] ON [refattach]([ReferralNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 2);