CREATE TABLE [wikilistheaderwidth] ( [WikiListHeaderWidthNum] bigint NOT NULL IDENTITY(1,1),
[ListName] varchar(255) NOT NULL,
[ColName] varchar(255) NOT NULL,
[ColWidth] int NOT NULL,
[PickList] text NOT NULL,
[IsHidden] tinyint NOT NULL,
CONSTRAINT PK_WikiListHeaderWidthNum PRIMARY KEY ([WikiListHeaderWidthNum]) );