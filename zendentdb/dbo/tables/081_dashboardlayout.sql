CREATE TABLE [dashboardlayout] ( [DashboardLayoutNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[UserGroupNum] bigint NOT NULL,
[DashboardTabName] varchar(255) NOT NULL,
[DashboardTabOrder] int NOT NULL,
[DashboardRows] int NOT NULL,
[DashboardColumns] int NOT NULL,
[DashboardGroupName] varchar(255) NOT NULL,
CONSTRAINT PK_DashboardLayoutNum PRIMARY KEY ([DashboardLayoutNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [dashboardlayout] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserGroupNum] ON [dashboardlayout] ([UserGroupNum]);