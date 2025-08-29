CREATE TABLE [vitalsign] ( [VitalsignNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[Height] float NOT NULL,
[Weight] float NOT NULL,
[BpSystolic] smallint NOT NULL,
[BpDiastolic] smallint NOT NULL,
[DateTaken] date NOT NULL DEFAULT '0001-01-01',
[HasFollowupPlan] tinyint NOT NULL,
[IsIneligible] tinyint NOT NULL,
[Documentation] text NOT NULL,
[ChildGotNutrition] tinyint NOT NULL,
[ChildGotPhysCouns] tinyint NOT NULL,
[WeightCode] varchar(255) NOT NULL,
[HeightExamCode] varchar(30) NOT NULL,
[WeightExamCode] varchar(30) NOT NULL,
[BMIExamCode] varchar(30) NOT NULL,
[EhrNotPerformedNum] bigint NOT NULL,
[PregDiseaseNum] bigint NOT NULL,
[BMIPercentile] int NOT NULL,
[Pulse] int NOT NULL,
CONSTRAINT PK_VitalsignNum PRIMARY KEY ([VitalsignNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [vitalsign] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_WeightCode] ON [vitalsign] ([WeightCode]);

GO
CREATE NONCLUSTERED INDEX [IX_EhrNotPerformedNum] ON [vitalsign] ([EhrNotPerformedNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PregDiseaseNum] ON [vitalsign] ([PregDiseaseNum]);