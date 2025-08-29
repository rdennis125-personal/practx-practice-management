CREATE TABLE [referralcliniclink] ( [ReferralClinicLinkNum] bigint NOT NULL IDENTITY(1,1),
[ReferralNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
CONSTRAINT PK_ReferralClinicLinkNum PRIMARY KEY ([ReferralClinicLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ReferralNum] ON [referralcliniclink] ([ReferralNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [referralcliniclink] ([ClinicNum]);