CREATE TABLE [reconcile] ( [ReconcileNum] bigint NOT NULL IDENTITY(1,1),
[AccountNum] bigint NOT NULL,
[StartingBal] FLOAT(53) NOT NULL DEFAULT 0,
[EndingBal] FLOAT(53) NOT NULL DEFAULT 0,
[DateReconcile] date NOT NULL DEFAULT '0001-01-01',
[IsLocked] tinyint NOT NULL DEFAULT 0,
CONSTRAINT PK_ReconcileNum PRIMARY KEY ([ReconcileNum]) );