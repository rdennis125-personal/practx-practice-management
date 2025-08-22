CREATE TABLE [payterminal] ( [PayTerminalNum] bigint NOT NULL IDENTITY(1,1),
[Name] varchar(255) NOT NULL,
[ClinicNum] bigint NOT NULL,
[TerminalID] varchar(255) NOT NULL,
CONSTRAINT PK_PayTerminalNum PRIMARY KEY ([PayTerminalNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [payterminal] ([ClinicNum]);