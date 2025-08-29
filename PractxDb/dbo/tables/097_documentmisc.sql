CREATE TABLE [documentmisc] ( [DocMiscNum] bigint NOT NULL IDENTITY(1,1),
[DateCreated] date NOT NULL DEFAULT '0001-01-01',
[FileName] varchar(255) NOT NULL,
[DocMiscType] tinyint NOT NULL,
[RawBase64] VARCHAR(MAX) NOT NULL,
CONSTRAINT PK_DocMiscNum PRIMARY KEY ([DocMiscNum]) );