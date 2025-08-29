CREATE TABLE [proccodenote] ( [ProcCodeNoteNum] bigint NOT NULL IDENTITY(1,1),
[CodeNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[Note] text DEFAULT NULL,
[ProcTime] varchar(255) DEFAULT NULL,
[ProcStatus] tinyint NOT NULL,
CONSTRAINT PK_ProcCodeNoteNum PRIMARY KEY ([ProcCodeNoteNum]) );