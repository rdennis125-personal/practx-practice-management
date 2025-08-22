CREATE TABLE [statement] ( [StatementNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateSent] date NOT NULL,
[DateRangeFrom] date NOT NULL,
[DateRangeTo] date NOT NULL,
[Note] text DEFAULT NULL,
[NoteBold] text DEFAULT NULL,
[Mode_] tinyint NOT NULL,
[HidePayment] tinyint NOT NULL,
[SinglePatient] tinyint NOT NULL,
[Intermingled] tinyint NOT NULL,
[IsSent] tinyint NOT NULL,
[DocNum] bigint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[IsReceipt] tinyint NOT NULL,
[IsInvoice] tinyint NOT NULL,
[IsInvoiceCopy] tinyint NOT NULL,
[EmailSubject] varchar(255) NOT NULL,
[EmailBody] VARCHAR(MAX) NOT NULL,
[SuperFamily] bigint NOT NULL,
[IsBalValid] tinyint NOT NULL,
[InsEst] FLOAT(53) NOT NULL,
[BalTotal] FLOAT(53) NOT NULL,
[StatementType] varchar(50) NOT NULL,
[ShortGUID] varchar(30) NOT NULL,
[StatementShortURL] varchar(50) NOT NULL,
[StatementURL] varchar(255) NOT NULL,
[SmsSendStatus] tinyint NOT NULL,
[LimitedCustomFamily] tinyint NOT NULL DEFAULT 0,
CONSTRAINT PK_StatementNum PRIMARY KEY ([StatementNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [statement] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DocNum] ON [statement] ([DocNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SuperFamModeDateSent] ON [statement] ([SuperFamily],[Mode_],[DateSent]);

GO
CREATE NONCLUSTERED INDEX [IX_ShortGUID] ON [statement] ([ShortGUID]);

GO
CREATE NONCLUSTERED INDEX [IX_IsSent] ON [statement] ([IsSent]);