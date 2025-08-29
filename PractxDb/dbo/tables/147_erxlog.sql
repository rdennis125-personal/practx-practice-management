CREATE TABLE [erxlog] ( [ErxLogNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[MsgText] VARCHAR(MAX) NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[ProvNum] bigint NOT NULL,
[UserNum] bigint NOT NULL,
CONSTRAINT PK_ErxLogNum PRIMARY KEY ([ErxLogNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [erxlog] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [erxlog] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [erxlog] ([UserNum]);