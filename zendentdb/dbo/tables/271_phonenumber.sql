CREATE TABLE [phonenumber] ( [PhoneNumberNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[PhoneNumberVal] varchar(255) DEFAULT NULL,
[PhoneNumberDigits] varchar(30) NOT NULL,
[PhoneType] tinyint NOT NULL,
CONSTRAINT PK_PhoneNumberNum PRIMARY KEY ([PhoneNumberNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [phonenumber] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_PhoneNumberVal] ON [phonenumber] ([PhoneNumberVal]);

GO
CREATE NONCLUSTERED INDEX [IX_PatPhoneDigits] ON [phonenumber]([PatNum],[PhoneNumberDigits]);

GO
CREATE NONCLUSTERED INDEX [IX_PhoneNumberDigits] ON [phonenumber] ([PhoneNumberDigits]);