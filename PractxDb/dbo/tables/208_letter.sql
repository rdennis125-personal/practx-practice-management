CREATE TABLE [letter] ( [LetterNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[BodyText] text DEFAULT NULL,
CONSTRAINT PK_LetterNum PRIMARY KEY ([LetterNum]) );