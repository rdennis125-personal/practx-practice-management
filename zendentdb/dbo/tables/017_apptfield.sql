CREATE TABLE [apptfield] ( [ApptFieldNum] bigint NOT NULL IDENTITY(1,1),
[AptNum] bigint NOT NULL,
[FieldName] varchar(255) NOT NULL,
[FieldValue] text NOT NULL,
CONSTRAINT PK_ApptFieldNum PRIMARY KEY ([ApptFieldNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_AptNum] ON [apptfield] ([AptNum]);