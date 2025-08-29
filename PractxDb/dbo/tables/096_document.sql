CREATE TABLE [document] ( [DocNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[DateCreated] datetime NOT NULL,
[DocCategory] bigint NOT NULL,
[PatNum] bigint NOT NULL,
[FileName] varchar(255) DEFAULT '',
[ImgType] tinyint NOT NULL DEFAULT 0,
[IsFlipped] tinyint NOT NULL DEFAULT 0,
[DegreesRotated] float NOT NULL,
[ToothNumbers] varchar(255) DEFAULT '',
[Note] VARCHAR(MAX) NOT NULL,
[SigIsTopaz] tinyint NOT NULL,
[Signature] text DEFAULT NULL,
[CropX] int NOT NULL,
[CropY] int NOT NULL,
[CropW] int NOT NULL,
[CropH] int NOT NULL,
[WindowingMin] int NOT NULL,
[WindowingMax] int NOT NULL,
[MountItemNum] bigint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[RawBase64] VARCHAR(MAX) NOT NULL,
[Thumbnail] text NOT NULL,
[ExternalGUID] varchar(255) NOT NULL,
[ExternalSource] varchar(255) NOT NULL,
[ProvNum] bigint NOT NULL,
[IsCropOld] tinyint NOT NULL,
[OcrResponseData] text NOT NULL,
[ImageCaptureType] tinyint NOT NULL DEFAULT 0,
[PrintHeading] tinyint NOT NULL,
CONSTRAINT PK_DocNum PRIMARY KEY ([DocNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [document] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PNDC] ON [document]([PatNum],[DocCategory]);

GO
CREATE NONCLUSTERED INDEX [IX_MountItemNum] ON [document] ([MountItemNum]);