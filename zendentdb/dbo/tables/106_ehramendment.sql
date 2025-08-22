CREATE TABLE [ehramendment] ( [EhrAmendmentNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[IsAccepted] tinyint NOT NULL,
[Description] text NOT NULL,
[Source] tinyint NOT NULL,
[SourceName] text NOT NULL,
[FileName] varchar(255) NOT NULL,
[RawBase64] VARCHAR(MAX) NOT NULL,
[DateTRequest] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTAcceptDeny] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTAppend] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_EhrAmendmentNum PRIMARY KEY ([EhrAmendmentNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [ehramendment] ([PatNum]);