CREATE TABLE [inssub] ( [InsSubNum] bigint NOT NULL IDENTITY(1,1),
[PlanNum] bigint NOT NULL,
[Subscriber] bigint NOT NULL,
[DateEffective] date NOT NULL DEFAULT '0001-01-01',
[DateTerm] date NOT NULL DEFAULT '0001-01-01',
[ReleaseInfo] tinyint NOT NULL,
[AssignBen] tinyint NOT NULL,
[SubscriberID] varchar(255) NOT NULL,
[BenefitNotes] text NOT NULL,
[SubscNote] text NOT NULL,
[SecUserNumEntry] bigint NOT NULL,
[SecDateEntry] date NOT NULL DEFAULT '0001-01-01',
[SecDateTEdit] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_InsSubNum PRIMARY KEY ([InsSubNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PlanNum] ON [inssub] ([PlanNum]);

GO
CREATE NONCLUSTERED INDEX [IX_Subscriber] ON [inssub] ([Subscriber]);

GO
CREATE NONCLUSTERED INDEX [IX_SecUserNumEntry] ON [inssub] ([SecUserNumEntry]);