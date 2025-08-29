CREATE TABLE [providererx] ( [ProviderErxNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[NationalProviderID] varchar(255) NOT NULL,
[IsEnabled] tinyint NOT NULL,
[IsIdentifyProofed] tinyint NOT NULL,
[IsSentToHq] tinyint NOT NULL,
[IsEpcs] tinyint NOT NULL,
[ErxType] tinyint NOT NULL,
[UserId] varchar(255) NOT NULL,
[AccountId] varchar(25) NOT NULL,
[RegistrationKeyNum] bigint NOT NULL,
CONSTRAINT PK_ProviderErxNum PRIMARY KEY ([ProviderErxNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [providererx] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_RegistrationKeyNum] ON [providererx] ([RegistrationKeyNum]);