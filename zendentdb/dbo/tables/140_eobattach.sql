CREATE TABLE [eobattach] ( [EobAttachNum] bigint NOT NULL IDENTITY(1,1),
[ClaimPaymentNum] bigint NOT NULL,
[DateTCreated] datetime NOT NULL,
[FileName] varchar(255) NOT NULL,
[RawBase64] text NOT NULL,
CONSTRAINT PK_EobAttachNum PRIMARY KEY ([EobAttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClaimPaymentNum] ON [eobattach] ([ClaimPaymentNum]);