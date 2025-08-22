CREATE TABLE [emailmessageuid] ( [EmailMessageUidNum] bigint NOT NULL IDENTITY(1,1),
[MsgId] text DEFAULT NULL,
[RecipientAddress] varchar(255) NOT NULL,
CONSTRAINT PK_EmailMessageUidNum PRIMARY KEY ([EmailMessageUidNum]) );