CREATE TABLE [vaccineobs] ( [VaccineObsNum] bigint NOT NULL IDENTITY(1,1),
[VaccinePatNum] bigint NOT NULL,
[ValType] tinyint NOT NULL,
[IdentifyingCode] tinyint NOT NULL,
[ValReported] varchar(255) NOT NULL,
[ValCodeSystem] tinyint NOT NULL,
[VaccineObsNumGroup] bigint NOT NULL,
[UcumCode] varchar(255) NOT NULL,
[DateObs] date NOT NULL DEFAULT '0001-01-01',
[MethodCode] varchar(255) NOT NULL,
CONSTRAINT PK_VaccineObsNum PRIMARY KEY ([VaccineObsNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_VaccinePatNum] ON [vaccineobs] ([VaccinePatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_VaccineObsNumGroup] ON [vaccineobs] ([VaccineObsNumGroup]);