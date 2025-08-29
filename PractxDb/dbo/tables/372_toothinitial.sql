CREATE TABLE [toothinitial] ( [ToothInitialNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ToothNum] varchar(2) DEFAULT '',
[InitialType] tinyint NOT NULL DEFAULT 0,
[Movement] float NOT NULL DEFAULT 0,
[DrawingSegment] text DEFAULT NULL,
[ColorDraw] int NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[DrawText] varchar(255) NOT NULL,
CONSTRAINT PK_ToothInitialNum PRIMARY KEY ([ToothInitialNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [toothinitial] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEntry] ON [toothinitial] ([SecDateTEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [toothinitial] ([SecDateTEdit]);