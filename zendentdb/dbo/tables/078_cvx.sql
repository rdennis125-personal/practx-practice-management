CREATE TABLE [cvx] ( [CvxNum] bigint NOT NULL IDENTITY(1,1),
[CvxCode] varchar(255) NOT NULL,
[Description] varchar(255) NOT NULL,
[IsActive] varchar(255) NOT NULL,
CONSTRAINT PK_CvxNum PRIMARY KEY ([CvxNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_CvxCode] ON [cvx] ([CvxCode]);