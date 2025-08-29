CREATE TABLE [cloudaddress] ( [CloudAddressNum] bigint NOT NULL IDENTITY(1,1),
[IpAddress] varchar(50) NOT NULL,
[UserNumLastConnect] bigint NOT NULL,
[DateTimeLastConnect] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_CloudAddressNum PRIMARY KEY ([CloudAddressNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNumLastConnect] ON [cloudaddress] ([UserNumLastConnect]);