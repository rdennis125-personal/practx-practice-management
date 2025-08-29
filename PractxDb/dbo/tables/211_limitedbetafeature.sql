CREATE TABLE [limitedbetafeature] ( [LimitedBetaFeatureNum] bigint NOT NULL IDENTITY(1,1),
[LimitedBetaFeatureTypeNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[IsSignedUp] tinyint NOT NULL,
CONSTRAINT PK_LimitedBetaFeatureNum PRIMARY KEY ([LimitedBetaFeatureNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_LimitedBetaFeatureTypeNum] ON [limitedbetafeature] ([LimitedBetaFeatureTypeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [limitedbetafeature] ([ClinicNum]);