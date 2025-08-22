CREATE TABLE [appointmentrule] ( [AppointmentRuleNum] bigint NOT NULL IDENTITY(1,1),
[RuleDesc] varchar(255) DEFAULT '',
[CodeStart] varchar(15) DEFAULT NULL,
[CodeEnd] varchar(15) DEFAULT NULL,
[IsEnabled] tinyint NOT NULL DEFAULT 0,
CONSTRAINT PK_AppointmentRuleNum PRIMARY KEY ([AppointmentRuleNum]) );