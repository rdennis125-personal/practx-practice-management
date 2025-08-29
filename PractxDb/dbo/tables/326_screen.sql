CREATE TABLE [screen] ( [ScreenNum] bigint NOT NULL IDENTITY(1,1),
[Gender] tinyint NOT NULL DEFAULT 0,
[RaceOld] tinyint NOT NULL,
[GradeLevel] tinyint NOT NULL DEFAULT 0,
[Age] tinyint NOT NULL DEFAULT 0,
[Urgency] tinyint NOT NULL DEFAULT 0,
[HasCaries] tinyint NOT NULL DEFAULT 0,
[NeedsSealants] tinyint NOT NULL DEFAULT 0,
[CariesExperience] tinyint NOT NULL DEFAULT 0,
[EarlyChildCaries] tinyint NOT NULL DEFAULT 0,
[ExistingSealants] tinyint NOT NULL DEFAULT 0,
[MissingAllTeeth] tinyint NOT NULL DEFAULT 0,
[Birthdate] date NOT NULL DEFAULT '0000-00-00',
[ScreenGroupNum] bigint NOT NULL,
[ScreenGroupOrder] smallint NOT NULL DEFAULT 0,
[Comments] varchar(255) DEFAULT NULL,
[ScreenPatNum] bigint NOT NULL,
[SheetNum] bigint NOT NULL,
CONSTRAINT PK_ScreenNum PRIMARY KEY ([ScreenNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ScreenPatNum] ON [screen]([ScreenPatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SheetNum] ON [screen]([SheetNum]);