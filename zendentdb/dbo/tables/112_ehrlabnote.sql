CREATE TABLE [ehrlabnote] ( [EhrLabNoteNum] bigint NOT NULL IDENTITY(1,1),
[EhrLabNum] bigint NOT NULL,
[EhrLabResultNum] bigint NOT NULL,
[Comments] text NOT NULL,
CONSTRAINT PK_EhrLabNoteNum PRIMARY KEY ([EhrLabNoteNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EhrLabNum] ON [ehrlabnote] ([EhrLabNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EhrLabResultNum] ON [ehrlabnote] ([EhrLabResultNum]);