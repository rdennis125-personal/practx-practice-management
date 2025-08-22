CREATE TABLE [mobiledatabyte] ( [MobileDataByteNum] bigint NOT NULL IDENTITY(1,1),
[RawBase64Data] VARCHAR(MAX) NOT NULL,
[RawBase64Code] VARCHAR(MAX) NOT NULL,
[RawBase64Tag] VARCHAR(MAX) NOT NULL,
[PatNum] bigint NOT NULL,
[ActionType] tinyint NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeExpires] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[RawBase64Code_Search] AS LEFT(RawBase64Code,16) PERSISTED,
CONSTRAINT PK_MobileDataByteNum PRIMARY KEY ([MobileDataByteNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [mobiledatabyte]([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_RawBase64Code] ON [mobiledatabyte]([RawBase64Code_Search]);