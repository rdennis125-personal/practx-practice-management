CREATE TABLE [procapptcolor] ( [ProcApptColorNum] bigint NOT NULL IDENTITY(1,1),
[CodeRange] varchar(255) NOT NULL,
[ColorText] int NOT NULL,
[ShowPreviousDate] tinyint NOT NULL,
CONSTRAINT PK_ProcApptColorNum PRIMARY KEY ([ProcApptColorNum]) );