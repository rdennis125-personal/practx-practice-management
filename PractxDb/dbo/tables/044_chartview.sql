CREATE TABLE [chartview] (
 [ChartViewNum] bigint NOT NULL IDENTITY(1,1),
[Description] varchar(255) NOT NULL,
[ItemOrder] int NOT NULL,
[ProcStatuses] tinyint NOT NULL,
[ObjectTypes] smallint NOT NULL,
[ShowProcNotes] tinyint NOT NULL,
[IsAudit] tinyint NOT NULL,
[SelectedTeethOnly] tinyint NOT NULL,
[OrionStatusFlags] int NOT NULL,
[DatesShowing] tinyint NOT NULL,
[IsTpCharting] tinyint NOT NULL,

CONSTRAINT PK_ChartViewNum PRIMARY KEY ([ChartViewNum]));

GO
