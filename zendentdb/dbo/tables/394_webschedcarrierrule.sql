CREATE TABLE [webschedcarrierrule] ( [WebSchedCarrierRuleNum] bigint NOT NULL IDENTITY(1,1),
[ClinicNum] bigint NOT NULL,
[CarrierName] varchar(255) NOT NULL,
[DisplayName] varchar(255) NOT NULL,
[Message] text NOT NULL,
[Rule] tinyint NOT NULL,
CONSTRAINT PK_WebSchedCarrierRuleNum PRIMARY KEY ([WebSchedCarrierRuleNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClinicNum] ON [webschedcarrierrule] ([ClinicNum]);