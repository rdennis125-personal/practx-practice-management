CREATE TABLE [providercliniclink] ( [ProviderClinicLinkNum] bigint NOT NULL IDENTITY(1,1),
[ProvNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
CONSTRAINT PK_ProviderClinicLinkNum PRIMARY KEY ([ProviderClinicLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [providercliniclink] ([ProvNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [providercliniclink] ([ClinicNum]);