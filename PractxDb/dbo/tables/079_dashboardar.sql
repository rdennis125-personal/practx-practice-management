CREATE TABLE [dashboardar] ( [DashboardARNum] bigint NOT NULL IDENTITY(1,1),
[DateCalc] date NOT NULL DEFAULT '0001-01-01',
[BalTotal] FLOAT(53) NOT NULL,
[InsEst] FLOAT(53) NOT NULL,
CONSTRAINT PK_DashboardARNum PRIMARY KEY ([DashboardARNum]) );