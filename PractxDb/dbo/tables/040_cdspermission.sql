CREATE TABLE [cdspermission] ( [CDSPermissionNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[SetupCDS] tinyint NOT NULL,
[ShowCDS] tinyint NOT NULL,
[ShowInfobutton] tinyint NOT NULL,
[EditBibliography] tinyint NOT NULL,
[ProblemCDS] tinyint NOT NULL,
[MedicationCDS] tinyint NOT NULL,
[AllergyCDS] tinyint NOT NULL,
[DemographicCDS] tinyint NOT NULL,
[LabTestCDS] tinyint NOT NULL,
[VitalCDS] tinyint NOT NULL,
CONSTRAINT PK_CDSPermissionNum PRIMARY KEY ([CDSPermissionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [cdspermission] ([UserNum]);