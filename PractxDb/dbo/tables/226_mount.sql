CREATE TABLE [mount] ( [MountNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DocCategory] bigint NOT NULL,
[DateCreated] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[Description] varchar(255) NOT NULL,
[Note] text NOT NULL,
[Width] int NOT NULL,
[Height] int NOT NULL,
[ColorBack] int NOT NULL,
[ProvNum] bigint NOT NULL,
[ColorFore] int NOT NULL,
[ColorTextBack] int NOT NULL,
[FlipOnAcquire] tinyint NOT NULL,
[AdjModeAfterSeries] tinyint NOT NULL,
CONSTRAINT PK_MountNum PRIMARY KEY ([MountNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [mount] ([PatNum]);