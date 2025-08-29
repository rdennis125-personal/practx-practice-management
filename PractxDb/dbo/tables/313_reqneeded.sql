CREATE TABLE [reqneeded] ( [ReqNeededNum] bigint NOT NULL IDENTITY(1,1),
[Descript] varchar(255) DEFAULT NULL,
[SchoolCourseNum] bigint NOT NULL,
[SchoolClassNum] bigint NOT NULL,
CONSTRAINT PK_ReqNeededNum PRIMARY KEY ([ReqNeededNum]) );