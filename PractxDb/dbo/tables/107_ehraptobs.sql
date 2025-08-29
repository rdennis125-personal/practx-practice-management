CREATE TABLE [ehraptobs] ( [EhrAptObsNum] bigint NOT NULL IDENTITY(1,1),
[AptNum] bigint NOT NULL,
[IdentifyingCode] tinyint NOT NULL,
[ValType] tinyint NOT NULL,
[ValReported] varchar(255) NOT NULL,
[UcumCode] varchar(255) NOT NULL,
[ValCodeSystem] varchar(255) NOT NULL,
CONSTRAINT PK_EhrAptObsNum PRIMARY KEY ([EhrAptObsNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_AptNum] ON [ehraptobs] ([AptNum]);