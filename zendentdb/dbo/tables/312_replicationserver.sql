CREATE TABLE [replicationserver] ( [ReplicationServerNum] bigint NOT NULL IDENTITY(1,1),
[Descript] text NOT NULL,
[ServerId] int NOT NULL,
[RangeStart] bigint NOT NULL,
[RangeEnd] bigint NOT NULL,
[AtoZpath] varchar(255) NOT NULL,
[UpdateBlocked] tinyint NOT NULL,
[SlaveMonitor] varchar(255) NOT NULL,
CONSTRAINT PK_ReplicationServerNum PRIMARY KEY ([ReplicationServerNum]) );