CREATE TABLE [apptview] ( [ApptViewNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) DEFAULT '',
[ItemOrder] smallint NOT NULL DEFAULT 0,
[RowsPerIncr] tinyint NOT NULL DEFAULT 1,
[OnlyScheduledProvs] tinyint NOT NULL,
[OnlySchedBeforeTime] time NOT NULL,
[OnlySchedAfterTime] time NOT NULL,
[StackBehavUR] tinyint NOT NULL,
[StackBehavLR] tinyint NOT NULL,
[ClinicNum] bigint NOT NULL,
[ApptTimeScrollStart] time NOT NULL,
[IsScrollStartDynamic] tinyint NOT NULL,
[IsApptBubblesDisabled] tinyint NOT NULL,
[WidthOpMinimum] smallint NOT NULL,
[WaitingRmName] tinyint NOT NULL,
CONSTRAINT PK_ApptViewNum PRIMARY KEY ([ApptViewNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [apptview] ([ClinicNum]);

--DBCC CHECKIDENT ('tablename', RESEED, 5);