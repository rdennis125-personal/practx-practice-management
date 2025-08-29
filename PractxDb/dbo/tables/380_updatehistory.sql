CREATE TABLE [updatehistory] ( [UpdateHistoryNum] bigint NOT NULL IDENTITY(1,1),
[DateTimeUpdated] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ProgramVersion] varchar(255) NOT NULL,
[Signature] text NOT NULL,
CONSTRAINT PK_UpdateHistoryNum PRIMARY KEY ([UpdateHistoryNum]) );