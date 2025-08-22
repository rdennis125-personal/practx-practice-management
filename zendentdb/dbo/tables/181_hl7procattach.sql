CREATE TABLE [hl7procattach] ( [HL7ProcAttachNum] bigint NOT NULL IDENTITY(1,1),
[HL7MsgNum] bigint NOT NULL,
[ProcNum] bigint NOT NULL,
CONSTRAINT PK_HL7ProcAttachNum PRIMARY KEY ([HL7ProcAttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_HL7MsgNum] ON [hl7procattach] ([HL7MsgNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [hl7procattach] ([ProcNum]);