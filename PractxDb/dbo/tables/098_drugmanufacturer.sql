CREATE TABLE [drugmanufacturer] ( [DrugManufacturerNum] bigint NOT NULL IDENTITY(1,1),
[ManufacturerName] varchar(255) NOT NULL,
[ManufacturerCode] varchar(20) NOT NULL,
CONSTRAINT PK_DrugManufacturerNum PRIMARY KEY ([DrugManufacturerNum]) );