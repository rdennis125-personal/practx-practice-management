CREATE TABLE [ehrmeasureevent] ( [EhrMeasureEventNum] bigint NOT NULL IDENTITY(1,1),
[DateTEvent] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[EventType] tinyint NOT NULL,
[PatNum] bigint NOT NULL,
[MoreInfo] varchar(255) NOT NULL,
[CodeValueEvent] varchar(30) NOT NULL,
[CodeSystemEvent] varchar(30) NOT NULL,
[CodeValueResult] varchar(30) NOT NULL,
[CodeSystemResult] varchar(30) NOT NULL,
[FKey] bigint NOT NULL,
[TobaccoCessationDesire] tinyint NOT NULL,
[DateStartTobacco] date NOT NULL DEFAULT '0001-01-01',
CONSTRAINT PK_EhrMeasureEventNum PRIMARY KEY ([EhrMeasureEventNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [ehrmeasureevent] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeValueEvent] ON [ehrmeasureevent] ([CodeValueEvent]);

GO
CREATE NONCLUSTERED INDEX [IX_CodeValueResult] ON [ehrmeasureevent] ([CodeValueResult]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [ehrmeasureevent] ([FKey]);

--DBCC CHECKIDENT ('tablename', RESEED, 2);