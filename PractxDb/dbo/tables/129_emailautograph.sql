CREATE TABLE [emailautograph] ( [EmailAutographNum] bigint NOT NULL IDENTITY(1,1),
[Description] text NOT NULL,
[EmailAddress] varchar(255) NOT NULL,
[AutographText] text NOT NULL,
CONSTRAINT PK_EmailAutographNum PRIMARY KEY ([EmailAutographNum]) );