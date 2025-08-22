CREATE TABLE [reqstudent] ( [ReqStudentNum] bigint NOT NULL IDENTITY(1,1),
[ReqNeededNum] bigint NOT NULL,
[Descript] varchar(255) DEFAULT NULL,
[SchoolCourseNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[AptNum] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[InstructorNum] bigint NOT NULL,
[DateCompleted] date NOT NULL DEFAULT '0001-01-01',
CONSTRAINT PK_ReqStudentNum PRIMARY KEY ([ReqStudentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ReqNeededNum] ON [reqstudent] ([ReqNeededNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [reqstudent] ([ProvNum]);