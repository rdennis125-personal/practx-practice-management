CREATE TABLE [custrefentry] ( [CustRefEntryNum] bigint NOT NULL IDENTITY(1,1),
[PatNumCust] bigint NOT NULL,
[PatNumRef] bigint NOT NULL,
[DateEntry] date NOT NULL DEFAULT '0001-01-01',
[Note] varchar(255) NOT NULL,
CONSTRAINT PK_CustRefEntryNum PRIMARY KEY ([CustRefEntryNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNumCust] ON [custrefentry] ([PatNumCust]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNumRef] ON [custrefentry] ([PatNumRef]);