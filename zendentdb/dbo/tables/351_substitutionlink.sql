CREATE TABLE [substitutionlink] ( [SubstitutionLinkNum] bigint NOT NULL IDENTITY(1,1),
[PlanNum] bigint NOT NULL,
[CodeNum] bigint NOT NULL,
[SubstitutionCode] varchar(25) NOT NULL,
[SubstOnlyIf] int NOT NULL,
CONSTRAINT PK_SubstitutionLinkNum PRIMARY KEY ([SubstitutionLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PlanNum] ON [substitutionlink] ([PlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeNum] ON [substitutionlink] ([CodeNum]);