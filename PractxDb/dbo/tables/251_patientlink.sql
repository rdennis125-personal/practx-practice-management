CREATE TABLE [patientlink] ( [PatientLinkNum] bigint NOT NULL IDENTITY(1,1),
[PatNumFrom] bigint NOT NULL,
[PatNumTo] bigint NOT NULL,
[LinkType] tinyint NOT NULL,
[DateTimeLink] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
CONSTRAINT PK_PatientLinkNum PRIMARY KEY ([PatientLinkNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNumFrom] ON [patientlink] ([PatNumFrom]);

GO
CREATE NONCLUSTERED INDEX [IX_PatNumTo] ON [patientlink] ([PatNumTo]);