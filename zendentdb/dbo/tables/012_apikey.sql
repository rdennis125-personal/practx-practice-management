CREATE TABLE [apikey] ( [APIKeyNum] bigint NOT NULL IDENTITY(1,1),
[CustApiKey] varchar(255) NOT NULL,
[DevName] varchar(255) NOT NULL,
CONSTRAINT PK_APIKeyNum PRIMARY KEY ([APIKeyNum]) );