CREATE TABLE [alertsub] ( [AlertSubNum] bigint NOT NULL IDENTITY(1,1),
[UserNum] bigint NOT NULL,
[ClinicNum] bigint NOT NULL,
[Type] tinyint NOT NULL,
[AlertCategoryNum] bigint NOT NULL,
CONSTRAINT PK_AlertSubNum PRIMARY KEY ([AlertSubNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [alertsub]([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [alertsub]([ClinicNum]);

GO
CREATE NONCLUSTERED INDEX [IX_AlertCategoryNum] ON [alertsub]([AlertCategoryNum]); 

--IDENTITY(1,1)=15;