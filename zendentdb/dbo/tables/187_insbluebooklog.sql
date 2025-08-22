CREATE TABLE [insbluebooklog] ( [InsBlueBookLogNum] bigint NOT NULL IDENTITY(1,1),
[ClaimProcNum] bigint NOT NULL,
[AllowedFee] FLOAT(53) NOT NULL,
[DateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[Description] text NOT NULL,
CONSTRAINT PK_InsBlueBookLogNum PRIMARY KEY ([InsBlueBookLogNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClaimProcNum] ON [insbluebooklog] ([ClaimProcNum]);