CREATE TABLE [allergy] ( [AllergyNum] bigint NOT NULL IDENTITY(1,1),
[AllergyDefNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[Reaction] varchar(255) NOT NULL,
[StatusIsActive] tinyint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[DateAdverseReaction] date NOT NULL DEFAULT '0001-01-01',
[SnomedReaction] varchar(255) NOT NULL,
CONSTRAINT PK_AllergyNum PRIMARY KEY ([AllergyNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_AllergyDefNum] ON [allergy]([AllergyDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [allergy]([PatNum]);