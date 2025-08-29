CREATE TABLE [labpanel] ( [LabPanelNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[RawMessage] text NOT NULL,
[LabNameAddress] varchar(255) NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[SpecimenCondition] varchar(255) NOT NULL,
[SpecimenSource] varchar(255) NOT NULL,
[ServiceId] varchar(255) NOT NULL,
[ServiceName] varchar(255) NOT NULL,
[MedicalOrderNum] bigint NOT NULL,
CONSTRAINT PK_LabPanelNum PRIMARY KEY ([LabPanelNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [labpanel] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MedicalOrderNum] ON [labpanel] ([MedicalOrderNum]);