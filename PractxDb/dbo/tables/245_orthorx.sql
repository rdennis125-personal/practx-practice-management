CREATE TABLE [orthorx] ( [OrthoRxNum] bigint NOT NULL IDENTITY(1,1),
[OrthoHardwareSpecNum] bigint NOT NULL,
[Description] varchar(255) NOT NULL,
[ToothRange] varchar(255) NOT NULL,
[ItemOrder] int NOT NULL,
CONSTRAINT PK_OrthoRxNum PRIMARY KEY ([OrthoRxNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_OrthoHardwareSpecNum] ON [orthorx] ([OrthoHardwareSpecNum]);