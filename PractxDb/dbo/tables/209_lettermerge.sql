CREATE TABLE [lettermerge] ( [LetterMergeNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[TemplateName] varchar(255) DEFAULT '',
[DataFileName] varchar(255) DEFAULT '',
[Category] bigint NOT NULL,
[ImageFolder] bigint NOT NULL,
CONSTRAINT PK_LetterMergeNum PRIMARY KEY ([LetterMergeNum]) );