CREATE TABLE [mountitem] ( [MountItemNum] bigint NOT NULL IDENTITY(1,1),
[MountNum] bigint NOT NULL,
[Xpos] int NOT NULL,
[Ypos] int NOT NULL,
[ItemOrder] int NOT NULL,
[Width] int NOT NULL,
[Height] int NOT NULL,
[RotateOnAcquire] int NOT NULL,
[ToothNumbers] varchar(255) NOT NULL,
[TextShowing] text NOT NULL,
[FontSize] float NOT NULL,
CONSTRAINT PK_MountItemNum PRIMARY KEY ([MountItemNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_MountNum] ON [mountitem] ([MountNum]);