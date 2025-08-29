CREATE TABLE [procbuttonquick] (
 [ProcButtonQuickNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) NOT NULL,
[CodeValue] varchar(255) NOT NULL,
[Surf] varchar(255) NOT NULL,
[YPos] int NOT NULL,
[ItemOrder] int NOT NULL,
[IsLabel] tinyint NOT NULL,

CONSTRAINT PK_ProcButtonQuickNum PRIMARY KEY ([ProcButtonQuickNum]));

GO
