CREATE TABLE [displayreport] (
 [DisplayReportNum] bigint NOT NULL IDENTITY(1,1),
[InternalName] varchar(255) NOT NULL,
[ItemOrder] int NOT NULL,
[Description] varchar(255) NOT NULL,
[Category] tinyint NOT NULL,
[IsHidden] tinyint NOT NULL,
[IsVisibleInSubMenu] tinyint NOT NULL,

CONSTRAINT PK_DisplayReportNum PRIMARY KEY ([DisplayReportNum]));

GO
