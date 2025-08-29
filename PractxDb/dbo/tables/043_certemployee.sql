CREATE TABLE [certemployee] ( [CertEmployeeNum] bigint NOT NULL IDENTITY(1,1),
[CertNum] bigint NOT NULL,
[EmployeeNum] bigint NOT NULL,
[DateCompleted] date NOT NULL DEFAULT '0001-01-01',
[Note] varchar(255) NOT NULL,
[UserNum] bigint NOT NULL,
CONSTRAINT PK_CertEmployeeNum PRIMARY KEY ([CertEmployeeNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [certemployee] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CertNum] ON [certemployee] ([CertNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmployeeNum] ON [certemployee] ([EmployeeNum]);