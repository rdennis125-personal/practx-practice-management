CREATE TABLE [apptfielddef] ( [ApptFieldDefNum] bigint NOT NULL IDENTITY(1,1),
[FieldName] varchar(255) NOT NULL,
[FieldType] tinyint NOT NULL,
[PickList] text NOT NULL,
[ItemOrder] int NOT NULL,
CONSTRAINT PK_ApptFieldDefNum PRIMARY KEY ([ApptFieldDefNum]) );