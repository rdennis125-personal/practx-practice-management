CREATE TABLE [medlabfacattach] ( [MedLabFacAttachNum] bigint NOT NULL IDENTITY(1,1),
[MedLabNum] bigint NOT NULL,
[MedLabResultNum] bigint NOT NULL,
[MedLabFacilityNum] bigint NOT NULL,
CONSTRAINT PK_MedLabFacAttachNum PRIMARY KEY ([MedLabFacAttachNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_MedLabNum] ON [medlabfacattach] ([MedLabNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MedLabResultNum] ON [medlabfacattach] ([MedLabResultNum]);

GO
CREATE NONCLUSTERED INDEX [IX_MedLabFacilityNum] ON [medlabfacattach] ([MedLabFacilityNum]);