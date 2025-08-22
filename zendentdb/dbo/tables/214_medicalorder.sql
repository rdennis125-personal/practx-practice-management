CREATE TABLE [medicalorder] ( [MedicalOrderNum] bigint NOT NULL IDENTITY(1,1),
[MedOrderType] tinyint NOT NULL,
[PatNum] bigint NOT NULL,
[DateTimeOrder] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[Description] varchar(255) NOT NULL,
[IsDiscontinued] tinyint NOT NULL,
[ProvNum] bigint NOT NULL,
CONSTRAINT PK_MedicalOrderNum PRIMARY KEY ([MedicalOrderNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [medicalorder] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProvNum] ON [medicalorder] ([ProvNum]);