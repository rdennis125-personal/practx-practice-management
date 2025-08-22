CREATE TABLE [feeschedgroup] ( [FeeSchedGroupNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) NOT NULL,
[FeeSchedNum] bigint NOT NULL,
[ClinicNums] varchar(255) NOT NULL,
CONSTRAINT PK_FeeSchedGroupNum PRIMARY KEY ([FeeSchedGroupNum])
);
GO
GO
CREATE NONCLUSTERED INDEX [IX_FeeSchedNum] ON [feeschedgroup] ([FeeSchedNum]);