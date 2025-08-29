CREATE TABLE [printer] ( [PrinterNum] bigint NOT NULL IDENTITY(1,1),
[ComputerNum] bigint NOT NULL,
[PrintSit] tinyint NOT NULL DEFAULT 0,
[PrinterName] varchar(255) DEFAULT '',
[DisplayPrompt] tinyint NOT NULL DEFAULT 0,
CONSTRAINT PK_PrinterNum PRIMARY KEY ([PrinterNum]) );