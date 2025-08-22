CREATE TABLE [patrestriction] ( [PatRestrictionNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[PatRestrictType] tinyint NOT NULL,
CONSTRAINT PK_PatRestrictionNum PRIMARY KEY ([PatRestrictionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNumRestrictType] ON [patrestriction]([PatNum],[PatRestrictType]);