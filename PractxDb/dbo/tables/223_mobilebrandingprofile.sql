CREATE TABLE [mobilebrandingprofile] ( [MobileBrandingProfileNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[OfficeDescription] varchar(255) NOT NULL,
[LogoFilePath] varchar(255) NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
CONSTRAINT PK_MobileBrandingProfileNum PRIMARY KEY ([MobileBrandingProfileNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [mobilebrandingprofile] ([ClinicNum]);