CREATE TABLE [procmultivisit] ( [ProcMultiVisitNum] bigint NOT NULL IDENTITY(1,1),
[GroupProcMultiVisitNum] bigint NOT NULL,
[ProcNum] bigint NOT NULL,
[ProcStatus] tinyint NOT NULL,
[IsInProcess] tinyint NOT NULL,
[SecDateTEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[PatNum] bigint NOT NULL,
CONSTRAINT PK_ProcMultiVisitNum PRIMARY KEY ([ProcMultiVisitNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_GroupProcMultiVisitNum] ON [procmultivisit] ([GroupProcMultiVisitNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [procmultivisit] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_IsInProcess] ON [procmultivisit] ([IsInProcess]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEntry] ON [procmultivisit] ([SecDateTEntry]);

GO
CREATE NONCLUSTERED INDEX [IX_SecDateTEdit] ON [procmultivisit] ([SecDateTEdit]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [procmultivisit] ([PatNum]);