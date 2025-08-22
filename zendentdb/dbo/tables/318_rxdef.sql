CREATE TABLE [rxdef] ( [RxDefNum] bigint NOT NULL IDENTITY(1,1),
[Drug] varchar(255) DEFAULT '',
[Sig] varchar(255) DEFAULT '',
[Disp] varchar(255) DEFAULT '',
[Refills] varchar(30) DEFAULT '',
[Notes] varchar(255) DEFAULT '',
[IsControlled] tinyint NOT NULL,
[RxCui] bigint NOT NULL,
[IsProcRequired] tinyint NOT NULL,
[PatientInstruction] text NOT NULL,
CONSTRAINT PK_RxDefNum PRIMARY KEY ([RxDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_RxCui] ON [rxdef] ([RxCui]);

--DBCC CHECKIDENT ('tablename', RESEED, 4);