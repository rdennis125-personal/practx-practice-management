CREATE TABLE [patientrace] ( [PatientRaceNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[Race] tinyint NOT NULL,
[CdcrecCode] varchar(255) NOT NULL,
CONSTRAINT PK_PatientRaceNum PRIMARY KEY ([PatientRaceNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [patientrace] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CdcrecCode] ON [patientrace] ([CdcrecCode]);