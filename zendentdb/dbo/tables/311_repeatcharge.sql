CREATE TABLE [repeatcharge] ( [RepeatChargeNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[ProcCode] varchar(15) DEFAULT NULL,
[ChargeAmt] FLOAT(53) NOT NULL DEFAULT 0,
[DateStart] date NOT NULL DEFAULT '0001-01-01',
[DateStop] date NOT NULL DEFAULT '0001-01-01',
[Note] text DEFAULT NULL,
[CopyNoteToProc] tinyint NOT NULL,
[CreatesClaim] tinyint NOT NULL,
[IsEnabled] tinyint NOT NULL,
[UsePrepay] tinyint NOT NULL,
[Npi] text NOT NULL,
[ErxAccountId] text NOT NULL,
[ProviderName] text NOT NULL,
[ChargeAmtAlt] FLOAT(53) NOT NULL,
[UnearnedTypes] varchar(4000) NOT NULL,
CONSTRAINT PK_RepeatChargeNum PRIMARY KEY ([RepeatChargeNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [repeatcharge] ([PatNum]);