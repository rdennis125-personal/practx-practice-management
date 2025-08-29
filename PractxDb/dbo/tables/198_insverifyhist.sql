CREATE TABLE [insverifyhist] ( [InsVerifyHistNum] bigint NOT NULL IDENTITY(1,1),
[InsVerifyNum] bigint NOT NULL,
[DateLastVerified] date NOT NULL DEFAULT '0001-01-01',
[UserNum] bigint NOT NULL,
[VerifyType] tinyint NOT NULL,
[FKey] bigint NOT NULL,
[DefNum] bigint NOT NULL,
[Note] text NOT NULL,
[DateLastAssigned] date NOT NULL DEFAULT '0001-01-01',
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[HoursAvailableForVerification] FLOAT(53) NOT NULL,
[VerifyUserNum] bigint NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_InsVerifyHistNum PRIMARY KEY ([InsVerifyHistNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_InsVerifyNum] ON [insverifyhist] ([InsVerifyNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [insverifyhist] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [insverifyhist] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_DefNum] ON [insverifyhist] ([DefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_VerifyUserNum] ON [insverifyhist] ([VerifyUserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [insverifyhist] ([SecDateTEdit]);