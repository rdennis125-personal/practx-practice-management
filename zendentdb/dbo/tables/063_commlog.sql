CREATE TABLE [commlog] ( [CommlogNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[CommDateTime] datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
[CommType] bigint NOT NULL,
[Note] text DEFAULT NULL,
[Mode_] tinyint NOT NULL DEFAULT 0,
[SentOrReceived] tinyint NOT NULL DEFAULT 0,
[UserNum] bigint NOT NULL,
[Signature] text NOT NULL,
[SigIsTopaz] tinyint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[DateTimeEnd] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[CommSource] tinyint DEFAULT NULL,
[ProgramNum] bigint NOT NULL,
[DateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ReferralNum] bigint NOT NULL,
[CommReferralBehavior] tinyint NOT NULL,
CONSTRAINT PK_CommlogNum PRIMARY KEY ([CommlogNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [commlog] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CommDateTime] ON [commlog] ([CommDateTime]);

GO
CREATE NONCLUSTERED INDEX [IX_CommType] ON [commlog] ([CommType]);

GO
CREATE NONCLUSTERED INDEX [IX_ProgramNum] ON [commlog] ([ProgramNum]);

GO
CREATE NONCLUSTERED INDEX [IX_indexPNCDateCType] ON [commlog]([PatNum],[CommDateTime],[CommType]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [commlog] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ReferralNum] ON [commlog] ([ReferralNum]);