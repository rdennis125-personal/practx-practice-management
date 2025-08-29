CREATE TABLE [orthoplanlink] ( [OrthoPlanLinkNum] bigint NOT NULL IDENTITY(1,1),
[OrthoCaseNum] bigint NOT NULL,
[LinkType] tinyint NOT NULL,
[FKey] bigint NOT NULL,
[IsActive] tinyint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecUserNumEntry] bigint NOT NULL,
CONSTRAINT PK_OrthoPlanLinkNum PRIMARY KEY ([OrthoPlanLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_OrthoCaseNum] ON [orthoplanlink] ([OrthoCaseNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [orthoplanlink] ([FKey]);