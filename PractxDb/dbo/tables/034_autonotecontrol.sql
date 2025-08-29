CREATE TABLE [autonotecontrol] (
 [AutoNoteControlNum] bigint NOT NULL IDENTITY(1,1),
[Descript] varchar(50) DEFAULT NULL,
[ControlType] varchar(50) DEFAULT NULL,
[ControlLabel] varchar(255) DEFAULT NULL,
[ControlOptions] text DEFAULT NULL,

CONSTRAINT PK_AutoNoteControlNum PRIMARY KEY ([AutoNoteControlNum]));

GO
