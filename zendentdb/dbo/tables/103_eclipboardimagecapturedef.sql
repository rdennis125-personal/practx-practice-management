CREATE TABLE [eclipboardimagecapturedef] ( [EClipboardImageCaptureDefNum] bigint NOT NULL IDENTITY(1,1),
[DefNum] bigint NOT NULL,
[IsSelfPortrait] tinyint NOT NULL,
[FrequencyDays] int NOT NULL,
[ClinicNum] bigint NOT NULL,
[OcrCaptureType] tinyint NOT NULL DEFAULT 0,
CONSTRAINT PK_EClipboardImageCaptureDefNum PRIMARY KEY ([EClipboardImageCaptureDefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_DefNum] ON [eclipboardimagecapturedef] ([DefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [eclipboardimagecapturedef] ([ClinicNum]);