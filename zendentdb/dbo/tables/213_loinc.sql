CREATE TABLE [loinc] ( [LoincNum] bigint NOT NULL IDENTITY(1,1),
[LoincCode] varchar(255) NOT NULL,
[Component] varchar(255) NOT NULL,
[PropertyObserved] varchar(255) NOT NULL,
[TimeAspct] varchar(255) NOT NULL,
[SystemMeasured] varchar(255) NOT NULL,
[ScaleType] varchar(255) NOT NULL,
[MethodType] varchar(255) NOT NULL,
[StatusOfCode] varchar(255) NOT NULL,
[NameShort] varchar(255) NOT NULL,
[ClassType] varchar(255) NOT NULL,
[UnitsRequired] tinyint NOT NULL,
[OrderObs] varchar(255) NOT NULL,
[HL7FieldSubfieldID] varchar(255) NOT NULL,
[ExternalCopyrightNotice] text NOT NULL,
[NameLongCommon] varchar(255) NOT NULL,
[UnitsUCUM] varchar(255) NOT NULL,
[RankCommonTests] int NOT NULL,
[RankCommonOrders] int NOT NULL,
CONSTRAINT PK_LoincNum PRIMARY KEY ([LoincNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_LoincCode] ON [loinc] ([LoincCode]);