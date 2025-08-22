CREATE TABLE [recall] ( [RecallNum] bigint NOT NULL IDENTITY(1,1),
[PatNum] bigint NOT NULL,
[DateDueCalc] date NOT NULL DEFAULT '0001-01-01',
[DateDue] date NOT NULL DEFAULT '0001-01-01',
[DatePrevious] date NOT NULL DEFAULT '0001-01-01',
[RecallInterval] int NOT NULL DEFAULT 0,
[RecallStatus] bigint NOT NULL,
[Note] text DEFAULT NULL,
[IsDisabled] tinyint NOT NULL DEFAULT 0,
[DateTStamp] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[RecallTypeNum] bigint NOT NULL,
[DisableUntilBalance] FLOAT(53) NOT NULL,
[DisableUntilDate] date NOT NULL DEFAULT '0001-01-01',
[DateScheduled] date NOT NULL DEFAULT '0001-01-01',
[Priority] tinyint NOT NULL,
[TimePatternOverride] varchar(255) NOT NULL,
CONSTRAINT PK_RecallNum PRIMARY KEY ([RecallNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PatNum] ON [recall] ([PatNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DatePrevious] ON [recall] ([DatePrevious]);

GO
CREATE NONCLUSTERED INDEX [IX_IsDisabled] ON [recall] ([IsDisabled]);

GO
CREATE NONCLUSTERED INDEX [IX_RecallTypeNum] ON [recall] ([RecallTypeNum]);

GO
CREATE NONCLUSTERED INDEX [IX_DateScheduled] ON [recall] ([DateScheduled]);

GO
CREATE NONCLUSTERED INDEX [IX_DateDisabledType] ON [recall] ([DateDue],[IsDisabled],[RecallTypeNum],[DateScheduled]);