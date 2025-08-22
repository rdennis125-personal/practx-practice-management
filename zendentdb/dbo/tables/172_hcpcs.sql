CREATE TABLE [hcpcs] ( [HcpcsNum] bigint NOT NULL IDENTITY(1,1),
[HcpcsCode] varchar(255) NOT NULL,
[DescriptionShort] varchar(255) NOT NULL,
CONSTRAINT PK_HcpcsNum PRIMARY KEY ([HcpcsNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_HcpcsCode] ON [hcpcs] ([HcpcsCode]);