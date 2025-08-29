CREATE TABLE [hl7defmessage] ( [HL7DefMessageNum] bigint NOT NULL IDENTITY(1,1),
[HL7DefNum] bigint NOT NULL,
[MessageType] varchar(255) NOT NULL,
[EventType] varchar(255) NOT NULL,
[InOrOut] tinyint NOT NULL,
[ItemOrder] int NOT NULL,
[Note] text NOT NULL,
[MessageStructure] varchar(255) NOT NULL,
CONSTRAINT PK_HL7DefMessageNum PRIMARY KEY ([HL7DefMessageNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_HL7DefNum] ON [hl7defmessage] ([HL7DefNum]);