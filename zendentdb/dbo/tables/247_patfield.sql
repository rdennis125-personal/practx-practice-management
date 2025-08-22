CREATE TABLE [patfield] ( [PatFieldNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[FieldName] varchar(255) DEFAULT '',
[FieldValue] text DEFAULT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_PatFieldNum PRIMARY KEY ([PatFieldNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [patfield] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [patfield] ([SecUserNumEntry]);