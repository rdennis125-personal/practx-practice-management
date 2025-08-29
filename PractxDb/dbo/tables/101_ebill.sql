CREATE TABLE [ebill] ( [EbillNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[ClientAcctNumber] varchar(255) NOT NULL,
[ElectUserName] varchar(255) NOT NULL,
[ElectPassword] varchar(255) NOT NULL,
[PracticeAddress] tinyint NOT NULL,
[RemitAddress] tinyint NOT NULL,
CONSTRAINT PK_EbillNum PRIMARY KEY ([EbillNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [ebill] ([ClinicNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 2);