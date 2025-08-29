CREATE TABLE [procbutton] (
 [ProcButtonNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[ItemOrder] smallint NOT NULL DEFAULT 0,
[Category] bigint NOT NULL,
[ButtonImage] text DEFAULT NULL,
[IsMultiVisit] tinyint NOT NULL,

CONSTRAINT PK_ProcButtonNum PRIMARY KEY ([ProcButtonNum]));

GO
