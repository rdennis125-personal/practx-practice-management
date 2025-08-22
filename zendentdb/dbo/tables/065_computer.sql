CREATE TABLE [computer] ( [ComputerNum] bigint NOT NULL IDENTITY(1,1),
[CompName] varchar(100) DEFAULT '',
[LastHeartBeat] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_ComputerNum PRIMARY KEY ([ComputerNum]) );