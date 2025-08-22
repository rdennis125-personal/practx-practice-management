CREATE TABLE [erouting] ( [ERoutingNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) NOT NULL,
[PatNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[IsComplete] tinyint NOT NULL,
CONSTRAINT PK_ERoutingNum PRIMARY KEY ([ERoutingNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [erouting] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [erouting] ([ClinicNum]);