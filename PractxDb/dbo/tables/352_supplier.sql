CREATE TABLE [supplier] ( [SupplierNum] bigint NOT NULL IDENTITY(1,1),
[Name] varchar(255) DEFAULT NULL,
[Phone] varchar(255) DEFAULT NULL,
[CustomerId] varchar(255) DEFAULT NULL,
[Website] text DEFAULT NULL,
[UserName] varchar(255) DEFAULT NULL,
[Password] varchar(255) DEFAULT NULL,
[Note] text DEFAULT NULL,
CONSTRAINT PK_SupplierNum PRIMARY KEY ([SupplierNum]) );