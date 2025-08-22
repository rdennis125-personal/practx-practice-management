CREATE TABLE [mobilenotification] ( [MobileNotificationNum] bigint NOT NULL IDENTITY(1,1),
[NotificationType] tinyint NOT NULL,
[DeviceId] varchar(255) NOT NULL,
[PrimaryKeys] text NOT NULL,
[Tags] text NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeExpires] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[AppTarget] tinyint NOT NULL,
CONSTRAINT PK_MobileNotificationNum PRIMARY KEY ([MobileNotificationNum]) );