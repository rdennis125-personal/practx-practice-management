CREATE TABLE [eclipboardimagecapture] ( [EClipboardImageCaptureNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DefNum] bigint NOT NULL,
[IsSelfPortrait] tinyint NOT NULL,
[DateTimeUpserted] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DocNum] bigint NOT NULL,
[OcrCaptureType] tinyint NOT NULL DEFAULT 0,
CONSTRAINT PK_EClipboardImageCaptureNum PRIMARY KEY ([EClipboardImageCaptureNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [eclipboardimagecapture] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DefNum] ON [eclipboardimagecapture] ([DefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DocNum] ON [eclipboardimagecapture] ([DocNum]);