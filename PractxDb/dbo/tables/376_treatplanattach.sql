CREATE TABLE [treatplanattach] ( [TreatPlanAttachNum] bigint NOT NULL IDENTITY(1,1),
[TreatPlanNum] bigint NOT NULL,
[ProcNum] bigint NOT NULL,
[Priority] bigint NOT NULL,
CONSTRAINT PK_TreatPlanAttachNum PRIMARY KEY ([TreatPlanAttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_TreatPlanNum] ON [treatplanattach] ([TreatPlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ProcNum] ON [treatplanattach] ([ProcNum]);

GO
CREATE NONCLUSTERED INDEX [IX_Priority] ON [treatplanattach] ([Priority]);