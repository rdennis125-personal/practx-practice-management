CREATE TABLE [schoolclass] ( [SchoolClassNum] bigint NOT NULL IDENTITY(1,1),
[GradYear] int NOT NULL,
[Descript] varchar(255) DEFAULT '',
CONSTRAINT PK_SchoolClassNum PRIMARY KEY ([SchoolClassNum]) );