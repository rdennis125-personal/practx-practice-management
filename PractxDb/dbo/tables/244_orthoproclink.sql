CREATE TABLE [orthoproclink] ( [OrthoProcLinkNum] bigint NOT NULL IDENTITY(1,1),
[OrthoCaseNum] bigint NOT NULL,
[ProcNum] bigint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecUserNumEntry] bigint NOT NULL,
[ProcLinkType] tinyint NOT NULL,
CONSTRAINT PK_OrthoProcLinkNum PRIMARY KEY ([OrthoProcLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_OrthoCaseNum] ON [orthoproclink] ([OrthoCaseNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [orthoproclink] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [orthoproclink] ([SecUserNumEntry]);