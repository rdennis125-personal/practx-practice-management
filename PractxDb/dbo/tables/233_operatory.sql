CREATE TABLE [operatory] ( [OperatoryNum] bigint NOT NULL IDENTITY(1,1),
[OpName] varchar(255) DEFAULT '',
[Abbrev] varchar(255) DEFAULT '',
[ItemOrder] smallint NOT NULL DEFAULT 0,
[IsHidden] tinyint NOT NULL DEFAULT 0,
[ProvDentist] bigint NOT NULL,
[ProvHygienist] bigint NOT NULL,
[IsHygiene] tinyint NOT NULL DEFAULT 0,
[ClinicNum] bigint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[SetProspective] tinyint NOT NULL,
[IsWebSched] tinyint NOT NULL,
[IsNewPatAppt] tinyint NOT NULL,
[OperatoryType] bigint NOT NULL,
CONSTRAINT PK_OperatoryNum PRIMARY KEY ([OperatoryNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProvDentist] ON [operatory] ([ProvDentist]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvHygienist] ON [operatory] ([ProvHygienist]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [operatory] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_OperatoryType] ON [operatory] ([OperatoryType]);

--DBCC CHECKIDENT ('tablename', RESEED, 7);