CREATE TABLE [fhircontactpoint] ( [FHIRContactPointNum] bigint NOT NULL IDENTITY(1,1),
[FHIRSubscriptionNum] bigint NOT NULL,
[ContactSystem] tinyint NOT NULL,
[ContactValue] varchar(255) NOT NULL,
[ContactUse] tinyint NOT NULL,
[ItemOrder] int NOT NULL,
[DateStart] date NOT NULL DEFAULT '0001-01-01',
[DateEnd] date NOT NULL DEFAULT '0001-01-01',
CONSTRAINT PK_FHIRContactPointNum PRIMARY KEY ([FHIRContactPointNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_FHIRSubscriptionNum] ON [fhircontactpoint] ([FHIRSubscriptionNum]);