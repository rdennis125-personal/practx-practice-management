CREATE TABLE [formpat] ( [FormPatNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[FormDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_FormPatNum PRIMARY KEY ([FormPatNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [formpat] ([PatNum]);