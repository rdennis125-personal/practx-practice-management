CREATE TABLE [reactivation] ( [ReactivationNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ReactivationStatus] bigint NOT NULL,
[ReactivationNote] text NOT NULL,
[DoNotContact] tinyint NOT NULL,
CONSTRAINT PK_ReactivationNum PRIMARY KEY ([ReactivationNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [reactivation] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ReactivationStatus] ON [reactivation] ([ReactivationStatus]);