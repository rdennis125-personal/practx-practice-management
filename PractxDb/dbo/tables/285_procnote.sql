CREATE TABLE [procnote] ( [ProcNoteNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ProcNum] bigint NOT NULL,
[EntryDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[UserNum] bigint NOT NULL,
[Note] text DEFAULT NULL,
[SigIsTopaz] tinyint NOT NULL,
[Signature] text DEFAULT NULL,
CONSTRAINT PK_ProcNoteNum PRIMARY KEY ([ProcNoteNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [procnote] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [procnote] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [procnote] ([UserNum]);