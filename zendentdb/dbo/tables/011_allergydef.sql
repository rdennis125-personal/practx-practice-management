CREATE TABLE [allergydef] ( [AllergyDefNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) NOT NULL,
[IsHidden] tinyint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[SnomedType] tinyint DEFAULT NULL,
[MedicationNum] bigint NOT NULL,
[UniiCode] varchar(255) NOT NULL,
CONSTRAINT PK_AllergyDefNum PRIMARY KEY ([AllergyDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_MedicationNum] ON [allergydef]([MedicationNum]); 

--IDENTITY(1,1)=9;