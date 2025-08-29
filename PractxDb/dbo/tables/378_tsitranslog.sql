CREATE TABLE [tsitranslog] ( [TsiTransLogNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[UserNum] bigint NOT NULL,
[TransType] tinyint NOT NULL,
[TransDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[ServiceType] tinyint NOT NULL,
[ServiceCode] tinyint NOT NULL,
[TransAmt] FLOAT(53) NOT NULL,
[AccountBalance] FLOAT(53) NOT NULL,
[FKeyType] tinyint NOT NULL,
[FKey] bigint NOT NULL,
[RawMsgText] varchar(1000) NOT NULL,
[ClientId] varchar(25) NOT NULL,
[TransJson] VARCHAR(MAX) NOT NULL,
[ClinicNum] bigint NOT NULL,
[AggTransLogNum] bigint NOT NULL,
CONSTRAINT PK_TsiTransLogNum PRIMARY KEY ([TsiTransLogNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [tsitranslog]([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [tsitranslog]([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKeyAndType] ON [tsitranslog]([FKey],[FKeyType]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [tsitranslog]([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_AggTransLogNum] ON [tsitranslog]([AggTransLogNum]);