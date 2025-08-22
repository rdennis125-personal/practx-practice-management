CREATE TABLE [cert] ( [CertNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) NOT NULL,
[WikiPageLink] varchar(255) NOT NULL,
[ItemOrder] int NOT NULL,
[IsHidden] tinyint NOT NULL,
[CertCategoryNum] bigint NOT NULL,
CONSTRAINT PK_CertNum PRIMARY KEY ([CertNum]) );