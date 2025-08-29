CREATE TABLE [hl7deffield] ( [HL7DefFieldNum] bigint NOT NULL IDENTITY(1,1),
[HL7DefSegmentNum] bigint NOT NULL,
[OrdinalPos] int NOT NULL,
[TableId] varchar(255) NOT NULL,
[DataType] varchar(255) NOT NULL,
[FieldName] varchar(255) NOT NULL,
[FixedText] text NOT NULL,
CONSTRAINT PK_HL7DefFieldNum PRIMARY KEY ([HL7DefFieldNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_HL7DefSegmentNum] ON [hl7deffield] ([HL7DefSegmentNum]);