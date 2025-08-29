CREATE TABLE [periomeasure] ( [PerioMeasureNum] bigint NOT NULL IDENTITY(1,1),
[PerioExamNum] bigint NOT NULL,
[SequenceType] tinyint NOT NULL DEFAULT 0,
[IntTooth] smallint NOT NULL,
[ToothValue] smallint NOT NULL,
[MBvalue] smallint NOT NULL,
[Bvalue] smallint NOT NULL,
[DBvalue] smallint NOT NULL,
[MLvalue] smallint NOT NULL,
[Lvalue] smallint NOT NULL,
[DLvalue] smallint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_PerioMeasureNum PRIMARY KEY ([PerioMeasureNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PerioExamNum] ON [periomeasure] ([PerioExamNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEntry] ON [periomeasure] ([SecDateTEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [periomeasure] ([SecDateTEdit]);