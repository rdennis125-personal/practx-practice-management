CREATE TABLE [rxnorm] ( [RxNormNum] bigint NOT NULL IDENTITY(1,1),
[RxCui] varchar(255) NOT NULL,
[MmslCode] varchar(255) NOT NULL,
[Description] text NOT NULL,
CONSTRAINT PK_RxNormNum PRIMARY KEY ([RxNormNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_RxCui] ON [rxnorm] ([RxCui]);