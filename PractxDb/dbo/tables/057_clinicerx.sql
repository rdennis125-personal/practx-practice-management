CREATE TABLE [clinicerx] ( [ClinicErxNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ClinicDesc] varchar(255) NOT NULL,
[ClinicNum] bigint NOT NULL,
[EnabledStatus] tinyint NOT NULL,
[ClinicId] varchar(255) NOT NULL,
[ClinicKey] varchar(255) NOT NULL,
[AccountId] varchar(25) NOT NULL,
[RegistrationKeyNum] bigint NOT NULL,
CONSTRAINT PK_ClinicErxNum PRIMARY KEY ([ClinicErxNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [clinicerx] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [clinicerx] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_RegistrationKeyNum] ON [clinicerx] ([RegistrationKeyNum]);