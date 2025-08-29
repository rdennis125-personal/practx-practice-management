CREATE TABLE [patfieldpickitem] ( [PatFieldPickItemNum] bigint NOT NULL IDENTITY(1,1),
[PatFieldDefNum] bigint NOT NULL,
[Name] varchar(255) NOT NULL,
[Abbreviation] varchar(255) NOT NULL,
[IsHidden] tinyint NOT NULL,
[ItemOrder] int NOT NULL,
CONSTRAINT PK_PatFieldPickItemNum PRIMARY KEY ([PatFieldPickItemNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatFieldDefNum] ON [patfieldpickitem] ([PatFieldDefNum]);