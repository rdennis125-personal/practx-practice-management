CREATE TABLE [ehrquarterlykey] ( [EhrQuarterlyKeyNum] bigint NOT NULL IDENTITY(1,1),
[YearValue] int NOT NULL,
[QuarterValue] int NOT NULL,
[PracticeName] varchar(255) NOT NULL,
[KeyValue] varchar(255) NOT NULL,
[PatNum] bigint NOT NULL,
[Notes] text NOT NULL,
CONSTRAINT PK_EhrQuarterlyKeyNum PRIMARY KEY ([EhrQuarterlyKeyNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [ehrquarterlykey] ([PatNum]);