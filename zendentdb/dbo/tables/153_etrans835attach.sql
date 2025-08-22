CREATE TABLE [etrans835attach] ( [Etrans835AttachNum] bigint NOT NULL IDENTITY(1,1),
[EtransNum] bigint NOT NULL,
[ClaimNum] bigint NOT NULL,
[ClpSegmentIndex] int NOT NULL,
[DateTimeEntry] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_Etrans835AttachNum PRIMARY KEY ([Etrans835AttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EtransNum] ON [etrans835attach] ([EtransNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClaimNum] ON [etrans835attach] ([ClaimNum]);