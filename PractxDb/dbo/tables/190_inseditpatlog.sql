CREATE TABLE [inseditpatlog] ( [InsEditPatLogNum] bigint NOT NULL IDENTITY(1,1),
[FKey] bigint NOT NULL,
[LogType] tinyint NOT NULL,
[FieldName] varchar(255) NOT NULL,
[OldValue] varchar(255) NOT NULL,
[NewValue] varchar(255) NOT NULL,
[UserNum] bigint NOT NULL,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[ParentKey] bigint NOT NULL,
[Description] varchar(255) NOT NULL,
CONSTRAINT PK_InsEditPatLogNum PRIMARY KEY ([InsEditPatLogNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_FkLogType] ON [inseditpatlog]([FKey],[LogType]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [inseditpatlog] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_ParentKey] ON [inseditpatlog] ([ParentKey]);