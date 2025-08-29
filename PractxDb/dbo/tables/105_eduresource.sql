CREATE TABLE [eduresource] ( [EduResourceNum] bigint NOT NULL IDENTITY(1,1),
[DiseaseDefNum] bigint NOT NULL,
[MedicationNum] bigint NOT NULL,
[LabResultID] varchar(255) NOT NULL,
[LabResultName] varchar(255) NOT NULL,
[LabResultCompare] varchar(255) NOT NULL,
[ResourceUrl] varchar(255) NOT NULL,
[SmokingSnoMed] varchar(255) NOT NULL,
CONSTRAINT PK_EduResourceNum PRIMARY KEY ([EduResourceNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_DiseaseDefNum] ON [eduresource] ([DiseaseDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MedicationNum] ON [eduresource] ([MedicationNum]);

GO
CREATE NONCLUSTERED INDEX [IX_LabResultID] ON [eduresource] ([LabResultID]);