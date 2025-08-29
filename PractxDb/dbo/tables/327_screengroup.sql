CREATE TABLE [screengroup] ( [ScreenGroupNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[SGDate] date NOT NULL DEFAULT '0000-00-00',
[ProvName] varchar(255) NOT NULL,
[ProvNum] bigint NOT NULL,
[PlaceService] tinyint NOT NULL,
[County] varchar(255) NOT NULL,
[GradeSchool] varchar(255) NOT NULL,
[SheetDefNum] bigint NOT NULL,
CONSTRAINT PK_ScreenGroupNum PRIMARY KEY ([ScreenGroupNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [screengroup]([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SheetDefNum] ON [screengroup]([SheetDefNum]);