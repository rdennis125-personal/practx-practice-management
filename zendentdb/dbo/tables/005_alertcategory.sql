CREATE TABLE [alertcategory] (
 [AlertCategoryNum] bigint NOT NULL IDENTITY(1,1),
[IsHQCategory] tinyint NOT NULL,
[InternalName] varchar(255) NOT NULL,
[Description] varchar(255) NOT NULL,
CONSTRAINT PK_AlertCategoryNum PRIMARY KEY ([AlertCategoryNum])
);