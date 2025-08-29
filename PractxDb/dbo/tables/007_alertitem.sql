CREATE TABLE [alertitem] ( [AlertItemNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[Description] varchar(2000) NOT NULL,
[Type] tinyint NOT NULL,
[Severity] tinyint NOT NULL,
[Actions] tinyint NOT NULL,
[FormToOpen] tinyint NOT NULL,
[FKey] bigint NOT NULL,
[ItemValue] varchar(4000) NOT NULL,
[UserNum] bigint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_AlertItemNum PRIMARY KEY ([AlertItemNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [alertitem]([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [alertitem]([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [alertitem]([UserNum]);