CREATE TABLE [recalltype] (
 [RecallTypeNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT NULL,
[DefaultInterval] int NOT NULL,
[TimePattern] varchar(255) DEFAULT NULL,
[Procedures] varchar(255) DEFAULT NULL,
[AppendToSpecial] tinyint NOT NULL,

CONSTRAINT PK_RecallTypeNum PRIMARY KEY ([RecallTypeNum]));

GO
