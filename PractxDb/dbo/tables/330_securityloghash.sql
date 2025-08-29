CREATE TABLE [securityloghash] ( [SecurityLogHashNum] bigint NOT NULL IDENTITY(1,1),
[SecurityLogNum] bigint NOT NULL,
[LogHash] varchar(255) NOT NULL,
CONSTRAINT PK_SecurityLogHashNum PRIMARY KEY ([SecurityLogHashNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SecurityLogNum] ON [securityloghash] ([SecurityLogNum]);