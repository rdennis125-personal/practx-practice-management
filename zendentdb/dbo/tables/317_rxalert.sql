CREATE TABLE [rxalert] ( [RxAlertNum] bigint NOT NULL IDENTITY(1,1),
[RxDefNum] bigint NOT NULL,
[DiseaseDefNum] bigint NOT NULL,
[AllergyDefNum] bigint NOT NULL,
[MedicationNum] bigint NOT NULL,
[NotificationMsg] varchar(255) NOT NULL,
[IsHighSignificance] tinyint NOT NULL,
CONSTRAINT PK_RxAlertNum PRIMARY KEY ([RxAlertNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_AllergyDefNum] ON [rxalert] ([AllergyDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MedicationNum] ON [rxalert] ([MedicationNum]);