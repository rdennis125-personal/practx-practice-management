CREATE TABLE [eroutingdef] ( [ERoutingDefNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[Description] varchar(255) NOT NULL,
[UserNumCreated] bigint NOT NULL,
[UserNumModified] bigint NOT NULL,
[SecDateTEntered] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateLastModified] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_ERoutingDefNum PRIMARY KEY ([ERoutingDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [eroutingdef] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNumCreated] ON [eroutingdef] ([UserNumCreated]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNumModified] ON [eroutingdef] ([UserNumModified]);