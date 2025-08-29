CREATE TABLE [clinicpref] ( [ClinicPrefNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[PrefName] varchar(255) NOT NULL,
[ValueString] text NOT NULL,
CONSTRAINT PK_ClinicPrefNum PRIMARY KEY ([ClinicPrefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [clinicpref] ([ClinicNum]);