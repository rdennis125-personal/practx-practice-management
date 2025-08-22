CREATE TABLE [dashboardcell] ( [DashboardCellNum] bigint NOT NULL IDENTITY(1,1),
[DashboardLayoutNum] bigint NOT NULL,
[CellRow] int NOT NULL,
[CellColumn] int NOT NULL,
[CellType] varchar(255) NOT NULL,
[CellSettings] text NOT NULL,
[LastQueryTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[LastQueryData] text NOT NULL,
[RefreshRateSeconds] int NOT NULL,
CONSTRAINT PK_DashboardCellNum PRIMARY KEY ([DashboardCellNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_DashboardLayoutNum] ON [dashboardcell] ([DashboardLayoutNum]);