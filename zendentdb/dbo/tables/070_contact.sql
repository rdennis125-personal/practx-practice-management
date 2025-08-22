CREATE TABLE [contact] ( [ContactNum] bigint NOT NULL IDENTITY(1,1),
[LName] varchar(255) DEFAULT '',
[FName] varchar(255) DEFAULT '',
[WkPhone] varchar(255) DEFAULT '',
[Fax] varchar(255) DEFAULT '',
[Category] bigint NOT NULL,
[Notes] text DEFAULT NULL,
CONSTRAINT PK_ContactNum PRIMARY KEY ([ContactNum]) );