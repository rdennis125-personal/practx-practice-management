CREATE TABLE [apptviewitem] ( [ApptViewItemNum] bigint NOT NULL IDENTITY(1,1),
[ApptViewNum] bigint NOT NULL,
[OpNum] bigint NOT NULL,
[ProvNum] bigint NOT NULL,
[ElementDesc] varchar(255) DEFAULT '',
[ElementOrder] tinyint NOT NULL DEFAULT 0,
[ElementColor] int NOT NULL DEFAULT 0,
[ElementAlignment] tinyint NOT NULL,
[ApptFieldDefNum] bigint NOT NULL,
[PatFieldDefNum] bigint NOT NULL,
[IsMobile] tinyint NOT NULL,
CONSTRAINT PK_ApptViewItemNum PRIMARY KEY ([ApptViewItemNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_OpNum] ON [apptviewitem] ([OpNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [apptviewitem] ([ProvNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 201);