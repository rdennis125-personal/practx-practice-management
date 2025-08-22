CREATE TABLE [userodapptview] ( [UserodApptViewNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[ApptViewNum] bigint NOT NULL,
CONSTRAINT PK_UserodApptViewNum PRIMARY KEY ([UserodApptViewNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [userodapptview] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [userodapptview] ([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ApptViewNum] ON [userodapptview] ([ApptViewNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 2);