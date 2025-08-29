CREATE TABLE [sessiontoken] ( [SessionTokenNum] bigint NOT NULL IDENTITY(1,1),
[SessionTokenHash] varchar(255) NOT NULL,
[Expiration] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[TokenType] tinyint NOT NULL,
[FKey] bigint NOT NULL,
CONSTRAINT PK_SessionTokenNum PRIMARY KEY ([SessionTokenNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [sessiontoken] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_SessionTokenHash]  ON [sessiontoken]([SessionTokenHash]);

GO
CREATE NONCLUSTERED INDEX [IX_Expiration] ON [sessiontoken]([Expiration]);