CREATE TABLE [smsphone] ( [SmsPhoneNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[PhoneNumber] varchar(255) NOT NULL,
[DateTimeActive] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeInactive] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[InactiveCode] varchar(255) NOT NULL,
[CountryCode] varchar(255) NOT NULL,
CONSTRAINT PK_SmsPhoneNum PRIMARY KEY ([SmsPhoneNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [smsphone] ([ClinicNum]);