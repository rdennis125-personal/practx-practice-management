CREATE TABLE [utm] ( [UtmNum] bigint NOT NULL IDENTITY(1,1),
[CampaignName] varchar(500) NOT NULL,
[MediumInfo] varchar(500) NOT NULL,
[SourceInfo] varchar(500) NOT NULL,
CONSTRAINT PK_UtmNum PRIMARY KEY ([UtmNum]) );