CREATE TABLE [hl7msg] ( [HL7MsgNum] bigint NOT NULL IDENTITY(1,1),
[HL7Status] int NOT NULL,
[MsgText] VARCHAR(MAX) DEFAULT NULL,
[AptNum] bigint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[PatNum] bigint NOT NULL,
[Note] text NOT NULL,
[MsgText_Search] AS LEFT([MsgText],100) PERSISTED,
CONSTRAINT PK_HL7MsgNum PRIMARY KEY ([HL7MsgNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_AptNum] ON [hl7msg] ([AptNum]);

GO
CREATE NONCLUSTERED INDEX [IX_HL7Status] ON [hl7msg] ([HL7Status]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTStamp] ON [hl7msg] ([DateTStamp]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [hl7msg] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MsgText] ON [hl7msg]([MsgText_Search]);