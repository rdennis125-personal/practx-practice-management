CREATE TABLE [userclinic] ( [UserClinicNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
CONSTRAINT PK_UserClinicNum PRIMARY KEY ([UserClinicNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [userclinic] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [userclinic] ([ClinicNum]);