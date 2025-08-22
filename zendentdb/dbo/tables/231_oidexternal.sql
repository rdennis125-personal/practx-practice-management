CREATE TABLE [oidexternal] (
[OIDExternalNum] bigint NOT NULL IDENTITY(1,1),
[IDType] varchar(255) NOT NULL,
[IDInternal] bigint NOT NULL,
[IDExternal] varchar(255) NOT NULL,
[rootExternal] varchar(255) NOT NULL,
CONSTRAINT PK_OIDExternalNum PRIMARY KEY ([OIDExternalNum])--,
--FOREIGN CREATE NONCLUSTERED INDEX [IX_IDType] REFERENCES [IDType]([IDInternal]),
--CREATE NONCLUSTERED INDEX [IX_rootExternal] ([rootExternal[(62),[IDExternal[(62)) 


);