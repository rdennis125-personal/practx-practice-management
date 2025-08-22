CREATE TABLE [ehrsummaryccd] ( [EhrSummaryCcdNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateSummary] date NOT NULL DEFAULT '0001-01-01',
[ContentSummary] VARCHAR(MAX) NOT NULL,
[EmailAttachNum] bigint NOT NULL,
CONSTRAINT PK_EhrSummaryCcdNum PRIMARY KEY ([EhrSummaryCcdNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [ehrsummaryccd] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_EmailAttachNum] ON [ehrsummaryccd] ([EmailAttachNum]);