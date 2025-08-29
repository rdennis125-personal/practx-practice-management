CREATE TABLE [site] ( [SiteNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT NULL,
[Note] text DEFAULT NULL,
[Address] varchar(100) NOT NULL,
[Address2] varchar(100) NOT NULL,
[City] varchar(100) NOT NULL,
[State] varchar(100) NOT NULL,
[Zip] varchar(100) NOT NULL,
[ProvNum] bigint NOT NULL,
[PlaceService] tinyint NOT NULL,
CONSTRAINT PK_SiteNum PRIMARY KEY ([SiteNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [site] ([ProvNum]);