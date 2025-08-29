CREATE TABLE [terminalactive] ( [TerminalActiveNum] bigint NOT NULL IDENTITY(1,1),
[ComputerName] varchar(255) DEFAULT '',
[TerminalStatus] tinyint NOT NULL,
[PatNum] bigint NOT NULL,
[SessionId] int NOT NULL,
[ProcessId] int NOT NULL,
[SessionName] varchar(255) NOT NULL,
CONSTRAINT PK_TerminalActiveNum PRIMARY KEY ([TerminalActiveNum]) );