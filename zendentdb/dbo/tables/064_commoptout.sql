CREATE TABLE [commoptout] ( [CommOptOutNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[OptOutSms] int NOT NULL,
[OptOutEmail] int NOT NULL,
CONSTRAINT PK_CommOptOutNum PRIMARY KEY ([CommOptOutNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [commoptout] ([PatNum]);