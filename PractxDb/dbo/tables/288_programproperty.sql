CREATE TABLE [programproperty] ( [ProgramPropertyNum] bigint NOT NULL IDENTITY(1,1),
[ProgramNum] bigint NOT NULL,
[PropertyDesc] varchar(255) DEFAULT '',
[PropertyValue] text DEFAULT NULL,
[ComputerName] varchar(255) NOT NULL,
[ClinicNum] bigint NOT NULL,
[IsMasked] tinyint NOT NULL,
[IsHighSecurity] tinyint NOT NULL,
CONSTRAINT PK_ProgramPropertyNum PRIMARY KEY ([ProgramPropertyNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [programproperty] ([ClinicNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 320);