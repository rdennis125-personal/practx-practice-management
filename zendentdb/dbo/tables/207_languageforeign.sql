CREATE TABLE [languageforeign] ( [LanguageForeignNum] bigint NOT NULL IDENTITY(1,1),
[ClassType] text DEFAULT NULL,
[English] text DEFAULT NULL,
[Culture] varchar(255) DEFAULT '',
[Translation] text DEFAULT NULL,
[Comments] text DEFAULT NULL,
CONSTRAINT PK_LanguageForeignNum PRIMARY KEY ([LanguageForeignNum]) );