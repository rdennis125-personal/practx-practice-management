CREATE TABLE [ucum] ( [UcumNum] bigint NOT NULL IDENTITY(1,1),
[UcumCode] varchar(255) NOT NULL,
[Description] varchar(255) NOT NULL,
[IsInUse] tinyint NOT NULL,
CONSTRAINT PK_UcumNum PRIMARY KEY ([UcumNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UcumCode] ON [ucum] ([UcumCode]);