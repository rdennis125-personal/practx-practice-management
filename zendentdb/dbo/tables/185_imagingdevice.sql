CREATE TABLE [imagingdevice] ( [ImagingDeviceNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) NOT NULL,
[ComputerName] varchar(255) NOT NULL,
[DeviceType] tinyint NOT NULL,
[TwainName] varchar(255) NOT NULL,
[ItemOrder] int NOT NULL,
[ShowTwainUI] tinyint NOT NULL,
CONSTRAINT PK_ImagingDeviceNum PRIMARY KEY ([ImagingDeviceNum]) );