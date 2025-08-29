CREATE TABLE [appointmenttype] (
 [AppointmentTypeNum] bigint NOT NULL IDENTITY(1,1),
[AppointmentTypeName] varchar(255) NOT NULL,
[AppointmentTypeColor] int NOT NULL,
[ItemOrder] int NOT NULL,
[IsHidden] tinyint NOT NULL,
[Pattern] varchar(255) NOT NULL,
[CodeStr] varchar(4000) NOT NULL,
[CodeStrRequired] varchar(4000) NOT NULL,
[RequiredProcCodesNeeded] tinyint NOT NULL,
[BlockoutTypes] varchar(255) NOT NULL,

CONSTRAINT PK_AppointmentTypeNum PRIMARY KEY ([AppointmentTypeNum]));

GO
