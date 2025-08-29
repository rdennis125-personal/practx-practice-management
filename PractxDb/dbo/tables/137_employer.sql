CREATE TABLE [employer] (
 [EmployerNum] bigint NOT NULL IDENTITY(1,1),
[EmpName] varchar(255) DEFAULT '',
[Address] varchar(255) DEFAULT '',
[Address2] varchar(255) DEFAULT '',
[City] varchar(255) DEFAULT '',
[State] varchar(255) DEFAULT '',
[Zip] varchar(255) DEFAULT '',
[Phone] varchar(255) DEFAULT '',

CONSTRAINT PK_EmployerNum PRIMARY KEY ([EmployerNum]));

GO
