CREATE TABLE [ehrprovkey] ( [EhrProvKeyNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[LName] varchar(255) NOT NULL,
[FName] varchar(255) NOT NULL,
[ProvKey] varchar(255) NOT NULL,
[FullTimeEquiv] float NOT NULL,
[Notes] text NOT NULL,
[YearValue] int NOT NULL,
CONSTRAINT PK_EhrProvKeyNum PRIMARY KEY ([EhrProvKeyNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [ehrprovkey] ([PatNum]);