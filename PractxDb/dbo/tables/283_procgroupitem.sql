CREATE TABLE [procgroupitem] ( [ProcGroupItemNum] bigint NOT NULL IDENTITY(1,1),
[ProcNum] bigint NOT NULL,
[GroupNum] bigint NOT NULL,
CONSTRAINT PK_ProcGroupItemNum PRIMARY KEY ([ProcGroupItemNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [procgroupitem] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_GroupNum] ON [procgroupitem] ([GroupNum]);