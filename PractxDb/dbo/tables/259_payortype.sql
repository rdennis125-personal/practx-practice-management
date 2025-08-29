CREATE TABLE [payortype] ( [PayorTypeNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateStart] date NOT NULL DEFAULT '0001-01-01',
[SopCode] varchar(255) NOT NULL,
[Note] text NOT NULL,
CONSTRAINT PK_PayorTypeNum PRIMARY KEY ([PayorTypeNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [payortype] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SopCode] ON [payortype] ([SopCode]);