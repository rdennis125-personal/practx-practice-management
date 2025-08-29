CREATE TABLE [deletedobject] ( [DeletedObjectNum] bigint NOT NULL IDENTITY(1,1),
[ObjectNum] bigint NOT NULL,
[ObjectType] int NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_DeletedObjectNum PRIMARY KEY ([DeletedObjectNum]) );