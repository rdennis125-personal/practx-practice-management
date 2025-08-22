CREATE TABLE [lettermergefield] ( [FieldNum] bigint NOT NULL IDENTITY(1,1),
[LetterMergeNum] bigint NOT NULL,
[FieldName] varchar(255) DEFAULT '',
CONSTRAINT PK_FieldNum PRIMARY KEY ([FieldNum]) );