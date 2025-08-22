CREATE TABLE [ehrmeasure] (
 [EhrMeasureNum] bigint NOT NULL IDENTITY(1,1),
[MeasureType] tinyint NOT NULL,
[Numerator] smallint NOT NULL,
[Denominator] smallint NOT NULL,

CONSTRAINT PK_EhrMeasureNum PRIMARY KEY ([EhrMeasureNum]));

GO
