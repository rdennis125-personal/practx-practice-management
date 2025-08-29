CREATE TABLE [stateabbr] (
 [StateAbbrNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(50) NOT NULL,
[Abbr] varchar(50) NOT NULL,
[MedicaidIDLength] int NOT NULL,

CONSTRAINT PK_StateAbbrNum PRIMARY KEY ([StateAbbrNum]));

GO
