CREATE TABLE [labturnaround] ( [LabTurnaroundNum] bigint NOT NULL IDENTITY(1,1),
[LaboratoryNum] bigint NOT NULL,
[Description] varchar(255) DEFAULT NULL,
[DaysPublished] smallint NOT NULL,
[DaysActual] smallint NOT NULL,
CONSTRAINT PK_LabTurnaroundNum PRIMARY KEY ([LabTurnaroundNum]) );