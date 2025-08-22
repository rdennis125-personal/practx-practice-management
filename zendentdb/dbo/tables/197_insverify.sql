CREATE TABLE [insverify] ( [InsVerifyNum] bigint NOT NULL IDENTITY(1,1),
[DateLastVerified] date NOT NULL DEFAULT '0001-01-01',
[UserNum] bigint NOT NULL,
[VerifyType] tinyint NOT NULL,
[FKey] bigint NOT NULL,
[DefNum] bigint NOT NULL,
[Note] text NOT NULL,
[DateLastAssigned] date NOT NULL DEFAULT '0001-01-01',
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[HoursAvailableForVerification] FLOAT(53) NOT NULL,
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_InsVerifyNum PRIMARY KEY ([InsVerifyNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [insverify] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_FKey] ON [insverify] ([FKey]);

GO
CREATE NONCLUSTERED INDEX [IX_DefNum] ON [insverify] ([DefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_VerifyType] ON [insverify] ([VerifyType]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [insverify] ([SecDateTEdit]);

GO
CREATE NONCLUSTERED INDEX [IX_DateTimeEntry] ON [insverify] ([DateTimeEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_DateLastAssigned] ON [insverify] ([DateLastAssigned]);