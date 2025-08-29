CREATE TABLE [ehrlabspecimenrejectreason] ( [EhrLabSpecimenRejectReasonNum] bigint NOT NULL IDENTITY(1,1),
[EhrLabSpecimenNum] bigint NOT NULL,
[SpecimenRejectReasonID] varchar(255) NOT NULL,
[SpecimenRejectReasonText] varchar(255) NOT NULL,
[SpecimenRejectReasonCodeSystemName] varchar(255) NOT NULL,
[SpecimenRejectReasonIDAlt] varchar(255) NOT NULL,
[SpecimenRejectReasonTextAlt] varchar(255) NOT NULL,
[SpecimenRejectReasonCodeSystemNameAlt] varchar(255) NOT NULL,
[SpecimenRejectReasonTextOriginal] varchar(255) NOT NULL,
CONSTRAINT PK_EhrLabSpecimenRejectReasonNum PRIMARY KEY ([EhrLabSpecimenRejectReasonNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_EhrLabSpecimenNum] ON [ehrlabspecimenrejectreason] ([EhrLabSpecimenNum]);