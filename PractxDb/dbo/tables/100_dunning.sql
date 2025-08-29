CREATE TABLE [dunning] ( [DunningNum] bigint NOT NULL IDENTITY(1,1),
[DunMessage] text DEFAULT NULL,
[BillingType] bigint NOT NULL,
[AgeAccount] tinyint NOT NULL DEFAULT 0,
[InsIsPending] tinyint NOT NULL DEFAULT 0,
[MessageBold] text DEFAULT NULL,
[EmailSubject] varchar(255) NOT NULL,
[EmailBody] VARCHAR(MAX) NOT NULL,
[DaysInAdvance] int NOT NULL,
[ClinicNum] bigint NOT NULL,
[IsSuperFamily] tinyint NOT NULL,
CONSTRAINT PK_DunningNum PRIMARY KEY ([DunningNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [dunning] ([ClinicNum]);