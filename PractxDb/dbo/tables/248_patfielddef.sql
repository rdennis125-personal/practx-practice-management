CREATE TABLE [patfielddef] (
 [PatFieldDefNum] bigint NOT NULL IDENTITY(1,1),
[FieldName] varchar(255) DEFAULT '',
[FieldType] tinyint NOT NULL,
[PickList] text NOT NULL,
[ItemOrder] int NOT NULL,
[IsHidden] tinyint NOT NULL,

CONSTRAINT PK_PatFieldDefNum PRIMARY KEY ([PatFieldDefNum]));

GO
