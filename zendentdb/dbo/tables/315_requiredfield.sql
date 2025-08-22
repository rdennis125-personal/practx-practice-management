CREATE TABLE [requiredfield] ( [RequiredFieldNum] bigint NOT NULL IDENTITY(1,1),
[FieldType] tinyint NOT NULL,
[FieldName] varchar(50) NOT NULL,
CONSTRAINT PK_RequiredFieldNum PRIMARY KEY ([RequiredFieldNum]) );