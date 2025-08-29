CREATE TABLE [guardian] ( [GuardianNum] bigint NOT NULL IDENTITY(1,1),
[PatNumChild] bigint NOT NULL,
[PatNumGuardian] bigint NOT NULL,
[Relationship] tinyint NOT NULL,
[IsGuardian] tinyint NOT NULL,
CONSTRAINT PK_GuardianNum PRIMARY KEY ([GuardianNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNumChild] ON [guardian] ([PatNumChild]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNumGuardian] ON [guardian] ([PatNumGuardian]);