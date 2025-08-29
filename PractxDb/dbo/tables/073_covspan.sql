CREATE TABLE [covspan] ( [CovSpanNum] bigint NOT NULL IDENTITY(1,1),
[CovCatNum] bigint NOT NULL,
[FromCode] varchar(15) COLLATE Latin1_General_100_CI_AS_SC_UTF8 DEFAULT '',
[ToCode] varchar(15) COLLATE Latin1_General_100_CI_AS_SC_UTF8 DEFAULT '',
CONSTRAINT PK_CovSpanNum PRIMARY KEY ([CovSpanNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_CovCatNum] ON [covspan] ([CovCatNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 34);