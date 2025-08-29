CREATE TABLE [hieclinic] ( [HieClinicNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[SupportedCarrierFlags] tinyint NOT NULL,
[PathExportCCD] varchar(255) NOT NULL,
[TimeOfDayExportCCD] bigint NOT NULL,
[IsEnabled] tinyint NOT NULL,
CONSTRAINT PK_HieClinicNum PRIMARY KEY ([HieClinicNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [hieclinic] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TimeOfDayExportCCD] ON [hieclinic] ([TimeOfDayExportCCD]);