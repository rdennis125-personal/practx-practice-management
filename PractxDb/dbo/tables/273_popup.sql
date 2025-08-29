CREATE TABLE [popup] ( [PopupNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[Description] text DEFAULT NULL,
[IsDisabled] tinyint NOT NULL,
[PopupLevel] tinyint NOT NULL,
[UserNum] bigint NOT NULL,
[DateTimeEntry] datetime NOT NULL,
[IsArchived] tinyint NOT NULL,
[PopupNumArchive] bigint NOT NULL,
[DateTimeDisabled] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_PopupNum PRIMARY KEY ([PopupNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [popup] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PopupNumArchive] ON [popup] ([PopupNumArchive]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [popup] ([PatNum]);