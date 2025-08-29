CREATE TABLE [claimattach] ( [ClaimAttachNum] bigint NOT NULL IDENTITY(1,1),
[ClaimNum] bigint NOT NULL,
[DisplayedFileName] varchar(255) DEFAULT NULL,
[ActualFileName] varchar(255) DEFAULT NULL,
[ImageReferenceId] int NOT NULL,
CONSTRAINT PK_ClaimAttachNum PRIMARY KEY ([ClaimAttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClaimNum] ON [claimattach] ([ClaimNum]);