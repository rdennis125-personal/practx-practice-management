CREATE TABLE [orthohardwarespec] (
 [OrthoHardwareSpecNum] bigint NOT NULL IDENTITY(1,1),
[OrthoHardwareType] tinyint NOT NULL,
[Description] varchar(255) NOT NULL,
[ItemColor] int NOT NULL,
[IsHidden] tinyint NOT NULL,
[ItemOrder] int NOT NULL,

CONSTRAINT PK_OrthoHardwareSpecNum PRIMARY KEY ([OrthoHardwareSpecNum]));

GO
