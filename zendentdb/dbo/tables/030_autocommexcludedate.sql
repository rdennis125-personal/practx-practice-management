CREATE TABLE [autocommexcludedate] ( [AutoCommExcludeDateNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[DateExclude] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_AutoCommExcludeDateNum PRIMARY KEY ([AutoCommExcludeDateNum]) );