CREATE TABLE [gradingscale] ( [GradingScaleNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) NOT NULL,
[ScaleType] tinyint NOT NULL,
CONSTRAINT PK_GradingScaleNum PRIMARY KEY ([GradingScaleNum]) );