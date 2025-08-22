CREATE TABLE [cdcrec] ( [CdcrecNum] bigint NOT NULL IDENTITY(1,1),
[CdcrecCode] varchar(255) NOT NULL,
[HeirarchicalCode] varchar(255) NOT NULL,
[Description] varchar(255) NOT NULL,
CONSTRAINT PK_CdcrecNum PRIMARY KEY ([CdcrecNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_CdcrecCode] ON [cdcrec] ([CdcrecCode]);