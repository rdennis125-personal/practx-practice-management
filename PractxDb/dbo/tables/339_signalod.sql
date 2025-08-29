CREATE TABLE [signalod] ( [SignalNum] bigint NOT NULL IDENTITY(1,1),
[DateViewing] date NOT NULL DEFAULT '0001-01-01',
[SigDateTime] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[FKey] bigint NOT NULL,
[FKeyType] varchar(255) NOT NULL,
[IType] tinyint NOT NULL,
[RemoteRole] tinyint NOT NULL,
[MsgValue] text NOT NULL,
CONSTRAINT PK_SignalNum PRIMARY KEY ([SignalNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_indexSigDateTime] ON [signalod] ([SigDateTime]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [signalod] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_IType] ON [signalod] ([IType]);