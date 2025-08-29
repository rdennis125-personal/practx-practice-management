CREATE TABLE [county] ( [CountyNum] bigint NOT NULL IDENTITY(1,1),
[CountyName] varchar(255) NOT NULL DEFAULT '',
[CountyCode] varchar(255) DEFAULT '',
CONSTRAINT PK_CountyNum PRIMARY KEY ([CountyNum]) );