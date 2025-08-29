CREATE TABLE [language] ( 
[LanguageNum] bigint NOT NULL IDENTITY(1,1),
[EnglishComments] text DEFAULT NULL,
[ClassType] text DEFAULT NULL,
[English] text DEFAULT NULL,
[IsObsolete] tinyint NOT NULL DEFAULT 0,
CONSTRAINT PK_LanguageNum PRIMARY KEY ([LanguageNum])
);