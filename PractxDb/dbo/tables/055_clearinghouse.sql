CREATE TABLE [clearinghouse] ( [ClearinghouseNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[ExportPath] text DEFAULT NULL,
[Payors] text DEFAULT NULL,
[Eformat] tinyint NOT NULL DEFAULT 0,
[ISA05] varchar(255) DEFAULT NULL,
[SenderTIN] varchar(255) DEFAULT NULL,
[ISA07] varchar(255) DEFAULT NULL,
[ISA08] varchar(255) DEFAULT NULL,
[ISA15] varchar(255) DEFAULT NULL,
[Password] varchar(255) DEFAULT '',
[ResponsePath] varchar(255) DEFAULT '',
[CommBridge] tinyint NOT NULL DEFAULT 0,
[ClientProgram] varchar(255) DEFAULT '',
[LastBatchNumber] smallint NOT NULL DEFAULT 0,
[ModemPort] tinyint NOT NULL DEFAULT 0,
[LoginID] varchar(255) DEFAULT '',
[SenderName] varchar(255) DEFAULT NULL,
[SenderTelephone] varchar(255) DEFAULT NULL,
[GS03] varchar(255) DEFAULT NULL,
[ISA02] varchar(10) NOT NULL,
[ISA04] varchar(10) NOT NULL,
[ISA16] varchar(2) NOT NULL,
[SeparatorData] varchar(2) NOT NULL,
[SeparatorSegment] varchar(2) NOT NULL,
[ClinicNum] bigint NOT NULL,
[HqClearinghouseNum] bigint NOT NULL,
[IsEraDownloadAllowed] tinyint NOT NULL DEFAULT 2,
[IsClaimExportAllowed] tinyint NOT NULL DEFAULT 1,
[IsAttachmentSendAllowed] tinyint NOT NULL,
[LocationID] varchar(255) NOT NULL DEFAULT '',
CONSTRAINT PK_ClearinghouseNum PRIMARY KEY ([ClearinghouseNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [clearinghouse] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_HqClearinghouseNum] ON [clearinghouse] ([HqClearinghouseNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 23);