CREATE TABLE [claimformitem] (
 [ClaimFormItemNum] bigint NOT NULL IDENTITY(1,1),
[ClaimFormNum] bigint NOT NULL,
[ImageFileName] varchar(255) DEFAULT '',
[FieldName] varchar(255) DEFAULT '',
[FormatString] varchar(255) DEFAULT '',
[XPos] float NOT NULL DEFAULT 0,
[YPos] float NOT NULL DEFAULT 0,
[Width] float NOT NULL DEFAULT 0,
[Height] float NOT NULL DEFAULT 0,

CONSTRAINT PK_ClaimFormItemNum PRIMARY KEY ([ClaimFormItemNum]));

GO
