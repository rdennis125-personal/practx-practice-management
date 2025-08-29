CREATE TABLE [hl7defsegment] ( [HL7DefSegmentNum] bigint NOT NULL IDENTITY(1,1),
[HL7DefMessageNum] bigint NOT NULL,
[ItemOrder] int NOT NULL,
[CanRepeat] tinyint NOT NULL,
[IsOptional] tinyint NOT NULL,
[SegmentName] varchar(255) NOT NULL,
[Note] text NOT NULL,
CONSTRAINT PK_HL7DefSegmentNum PRIMARY KEY ([HL7DefSegmentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_HL7DefMessageNum] ON [hl7defsegment] ([HL7DefMessageNum]);