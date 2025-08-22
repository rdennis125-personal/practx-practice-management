CREATE TABLE [etrans835] ( [Etrans835Num] bigint NOT NULL IDENTITY(1,1),
[EtransNum] bigint NOT NULL,
[PayerName] varchar(60) NOT NULL,
[TransRefNum] varchar(50) NOT NULL,
[InsPaid] FLOAT(53) NOT NULL,
[ControlId] varchar(9) NOT NULL,
[PaymentMethodCode] varchar(3) NOT NULL,
[PatientName] varchar(100) NOT NULL,
[Status] tinyint NOT NULL,
[AutoProcessed] tinyint NOT NULL,
[IsApproved] tinyint NOT NULL,
CONSTRAINT PK_Etrans835Num PRIMARY KEY ([Etrans835Num])
);

GO
CREATE NONCLUSTERED INDEX [IX_EtransNum] ON [etrans835] ([EtransNum]);