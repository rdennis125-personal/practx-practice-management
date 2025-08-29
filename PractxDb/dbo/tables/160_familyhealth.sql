CREATE TABLE [familyhealth] ( [FamilyHealthNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[Relationship] tinyint NOT NULL,
[DiseaseDefNum] bigint NOT NULL,
[PersonName] varchar(255) NOT NULL,
CONSTRAINT PK_FamilyHealthNum PRIMARY KEY ([FamilyHealthNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [familyhealth] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DiseaseDefNum] ON [familyhealth] ([DiseaseDefNum]);