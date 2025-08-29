CREATE TABLE [orthoschedule] ( [OrthoScheduleNum] bigint NOT NULL IDENTITY(1,1),
[BandingDateOverride] date NOT NULL DEFAULT '0001-01-01',
[DebondDateOverride] date NOT NULL DEFAULT '0001-01-01',
[BandingAmount] FLOAT(53) NOT NULL,
[VisitAmount] FLOAT(53) NOT NULL,
[DebondAmount] FLOAT(53) NOT NULL,
[IsActive] tinyint NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_OrthoScheduleNum PRIMARY KEY ([OrthoScheduleNum]) );