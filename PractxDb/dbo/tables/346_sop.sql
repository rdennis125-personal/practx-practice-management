CREATE TABLE [sop] ( [SopNum] bigint NOT NULL IDENTITY(1,1),
[SopCode] varchar(255) NOT NULL,
[Description] varchar(255) NOT NULL,
CONSTRAINT PK_SopNum PRIMARY KEY ([SopNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_SopCode] ON [sop] ([SopCode]);