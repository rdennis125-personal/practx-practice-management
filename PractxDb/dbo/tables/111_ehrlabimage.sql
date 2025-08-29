CREATE TABLE [ehrlabimage] ( [EhrLabImageNum] bigint NOT NULL IDENTITY(1,1),
[EhrLabNum] bigint NOT NULL,
[DocNum] bigint NOT NULL,
CONSTRAINT PK_EhrLabImageNum PRIMARY KEY ([EhrLabImageNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EhrLabNum] ON [ehrlabimage] ([EhrLabNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DocNum] ON [ehrlabimage] ([DocNum]);