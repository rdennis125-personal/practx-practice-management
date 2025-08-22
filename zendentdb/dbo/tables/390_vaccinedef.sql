CREATE TABLE [vaccinedef] ( [VaccineDefNum] bigint NOT NULL IDENTITY(1,1),
[CVXCode] varchar(255) NOT NULL,
[VaccineName] varchar(255) NOT NULL,
[DrugManufacturerNum] bigint NOT NULL,
CONSTRAINT PK_VaccineDefNum PRIMARY KEY ([VaccineDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_DrugManufacturerNum] ON [vaccinedef] ([DrugManufacturerNum]);