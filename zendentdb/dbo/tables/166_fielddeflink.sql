CREATE TABLE [fielddeflink] ( [FieldDefLinkNum] bigint NOT NULL IDENTITY(1,1),
[FieldDefNum] bigint NOT NULL,
[FieldDefType] tinyint NOT NULL,
[FieldLocation] tinyint NOT NULL,
CONSTRAINT PK_FieldDefLinkNum PRIMARY KEY ([FieldDefLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_FieldDefNum] ON [fielddeflink] ([FieldDefNum]);