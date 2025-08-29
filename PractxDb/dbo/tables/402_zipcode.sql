CREATE TABLE [zipcode] (
[ZipCodeNum] bigint NOT NULL IDENTITY(1,1),
[ZipCodeDigits] varchar(20) DEFAULT '',
[City] varchar(100) DEFAULT '',
[State] varchar(20) DEFAULT '',
[IsFrequent] tinyint NOT NULL DEFAULT 0,

CONSTRAINT PK_ZipCodeNum PRIMARY KEY ([ZipCodeNum]));

GO

