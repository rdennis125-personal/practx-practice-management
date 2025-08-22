CREATE TABLE [alertcategorylink] (
[AlertCategoryLinkNum] bigint NOT NULL IDENTITY(1,1),
[AlertCategoryNum] bigint NOT NULL,
[AlertType] tinyint NOT NULL,
CONSTRAINT PK_AlertCategoryLinkNum PRIMARY KEY ([AlertCategoryLinkNum])
);
GO
CREATE NONCLUSTERED INDEX [IX_AlertCategoryNum] ON [alertcategorylink]([AlertCategoryNum]);