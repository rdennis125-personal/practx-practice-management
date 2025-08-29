CREATE TABLE [drugunit] ( [DrugUnitNum] bigint NOT NULL IDENTITY(1,1),
[UnitIdentifier] varchar(20) NOT NULL,
[UnitText] varchar(255) NOT NULL,
CONSTRAINT PK_DrugUnitNum PRIMARY KEY ([DrugUnitNum]) );