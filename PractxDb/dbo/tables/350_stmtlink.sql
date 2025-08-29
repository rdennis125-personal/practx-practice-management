CREATE TABLE [stmtlink] ( [StmtLinkNum] bigint NOT NULL IDENTITY(1,1),
[StatementNum] bigint NOT NULL,
[StmtLinkType] tinyint NOT NULL,
[FKey] bigint NOT NULL,
CONSTRAINT PK_StmtLinkNum PRIMARY KEY ([StmtLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_StatementNum] ON [stmtlink] ([StatementNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKeyAndType] ON [stmtlink]([StmtLinkType],[FKey]);