CREATE TABLE [mobileappdevice] ( [MobileAppDeviceNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[DeviceName] varchar(255) NOT NULL,
[UniqueID] varchar(255) NOT NULL,
[IsEclipboardEnabled] tinyint NOT NULL,
[EclipboardLastAttempt] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[EclipboardLastLogin] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[PatNum] bigint NOT NULL,
[LastCheckInActivity] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[IsBYODDevice] tinyint NOT NULL,
[DevicePage] tinyint NOT NULL,
[UserNum] bigint NOT NULL,
[IsODTouchEnabled] tinyint NOT NULL,
[ODTouchLastLogin] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ODTouchLastAttempt] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_MobileAppDeviceNum PRIMARY KEY ([MobileAppDeviceNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [mobileappdevice] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [mobileappdevice] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [mobileappdevice] ([UserNum]);