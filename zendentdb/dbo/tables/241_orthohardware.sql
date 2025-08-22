CREATE TABLE [orthohardware] ( [OrthoHardwareNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateExam] date NOT NULL DEFAULT '0001-01-01',
[OrthoHardwareType] tinyint NOT NULL,
[OrthoHardwareSpecNum] bigint NOT NULL,
[ToothRange] varchar(255) NOT NULL,
[Note] varchar(255) NOT NULL,
[IsHidden] tinyint NOT NULL,
CONSTRAINT PK_OrthoHardwareNum PRIMARY KEY ([OrthoHardwareNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [orthohardware] ([PatNum]);