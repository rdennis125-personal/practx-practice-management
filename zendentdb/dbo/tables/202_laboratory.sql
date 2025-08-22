CREATE TABLE [laboratory] (
 [LaboratoryNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT NULL,
[Phone] varchar(255) DEFAULT NULL,
[Notes] text DEFAULT NULL,
[Slip] bigint NOT NULL,
[Address] varchar(255) NOT NULL,
[City] varchar(255) NOT NULL,
[State] varchar(255) NOT NULL,
[Zip] varchar(255) NOT NULL,
[Email] varchar(255) NOT NULL,
[WirelessPhone] varchar(255) NOT NULL,
[IsHidden] tinyint NOT NULL,

CONSTRAINT PK_LaboratoryNum PRIMARY KEY ([LaboratoryNum]));

GO
