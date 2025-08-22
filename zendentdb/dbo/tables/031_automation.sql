CREATE TABLE [automation] ( [AutomationNum] bigint NOT NULL IDENTITY(1,1),
[Description] text NOT NULL,
[Autotrigger] tinyint NOT NULL,
[ProcCodes] text NOT NULL,
[AutoAction] tinyint NOT NULL,
[SheetDefNum] bigint NOT NULL,
[CommType] bigint NOT NULL,
[MessageContent] text NOT NULL,
[AptStatus] tinyint NOT NULL,
[AppointmentTypeNum] bigint NOT NULL,
[PatStatus] tinyint NOT NULL,
CONSTRAINT PK_AutomationNum PRIMARY KEY ([AutomationNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_AppointmentTypeNum] ON [automation] ([AppointmentTypeNum]);