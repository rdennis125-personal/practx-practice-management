CREATE TABLE [pharmclinic] ( [PharmClinicNum] bigint NOT NULL IDENTITY(1,1),
[PharmacyNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
CONSTRAINT PK_PharmClinicNum PRIMARY KEY ([PharmClinicNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PharmacyNum] ON [pharmclinic] ([PharmacyNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [pharmclinic] ([ClinicNum]);