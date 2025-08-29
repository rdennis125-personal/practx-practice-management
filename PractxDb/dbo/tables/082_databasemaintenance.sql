CREATE TABLE [databasemaintenance] (
 [DatabaseMaintenanceNum] bigint NOT NULL IDENTITY(1,1),
[MethodName] varchar(255) NOT NULL,
[IsHidden] tinyint NOT NULL,
[IsOld] tinyint NOT NULL,
[DateLastRun] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',

CONSTRAINT PK_DatabaseMaintenanceNum PRIMARY KEY ([DatabaseMaintenanceNum]));

GO
