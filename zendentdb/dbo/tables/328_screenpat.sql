CREATE TABLE [screenpat] ( [ScreenPatNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ScreenGroupNum] bigint NOT NULL,
[SheetNum] bigint NOT NULL,
[PatScreenPerm] tinyint NOT NULL,
CONSTRAINT PK_ScreenPatNum PRIMARY KEY ([ScreenPatNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [screenpat] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ScreenGroupNum] ON [screenpat] ([ScreenGroupNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SheetNum] ON [screenpat] ([SheetNum]);