CREATE TABLE [userodpref] ( [UserOdPrefNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[Fkey] bigint NOT NULL,
[FkeyType] tinyint NOT NULL,
[ValueString] text NOT NULL,
[ClinicNum] bigint NOT NULL,
CONSTRAINT PK_UserOdPrefNum PRIMARY KEY ([UserOdPrefNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [userodpref] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_Fkey] ON [userodpref] ([Fkey]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [userodpref] ([ClinicNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 3);