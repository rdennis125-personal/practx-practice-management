CREATE TABLE [covcat] (
 [CovCatNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(50) DEFAULT '',
[DefaultPercent] smallint NOT NULL,
[CovOrder] int NOT NULL,
[IsHidden] tinyint NOT NULL DEFAULT 0,
[EbenefitCat] tinyint NOT NULL DEFAULT 0,

CONSTRAINT PK_CovCatNum PRIMARY KEY ([CovCatNum]));

GO
