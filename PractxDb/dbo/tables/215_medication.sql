CREATE TABLE [medication] ( [MedicationNum] bigint NOT NULL IDENTITY(1,1),
[MedName] varchar(255) DEFAULT '',
[GenericNum] bigint NOT NULL,
[Notes] text DEFAULT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[RxCui] bigint NOT NULL,
CONSTRAINT PK_MedicationNum PRIMARY KEY ([MedicationNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_RxCui] ON [medication] ([RxCui]);

--DBCC CHECKIDENT ('tablename', RESEED, 5);