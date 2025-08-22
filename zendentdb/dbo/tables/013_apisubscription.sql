CREATE TABLE [apisubscription] ( [ApiSubscriptionNum] bigint NOT NULL IDENTITY(1,1),
[EndPointUrl] varchar(255) NOT NULL,
[Workstation] varchar(255) NOT NULL,
[CustomerKey] varchar(255) NOT NULL,
[WatchTable] varchar(255) NOT NULL,
[PollingSeconds] int NOT NULL,
[UiEventType] varchar(255) NOT NULL,
[DateTimeStart] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[DateTimeStop] datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
[Note] varchar(255) NOT NULL,
CONSTRAINT PK_ApiSubscriptionNum PRIMARY KEY ([ApiSubscriptionNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_PollingSeconds] ON [apisubscription] ([PollingSeconds]);