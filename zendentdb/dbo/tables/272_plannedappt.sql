CREATE TABLE [plannedappt] ( [PlannedApptNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[AptNum] bigint NOT NULL,
[ItemOrder] int NOT NULL,
CONSTRAINT PK_PlannedApptNum PRIMARY KEY ([PlannedApptNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [plannedappt] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_AptNum] ON [plannedappt] ([AptNum]);