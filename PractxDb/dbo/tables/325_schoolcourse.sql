CREATE TABLE [schoolcourse] ( [SchoolCourseNum] bigint NOT NULL IDENTITY(1,1),
[CourseID] varchar(255) DEFAULT '',
[Descript] varchar(255) DEFAULT '',
CONSTRAINT PK_SchoolCourseNum PRIMARY KEY ([SchoolCourseNum]) );