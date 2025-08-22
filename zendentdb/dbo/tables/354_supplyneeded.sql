CREATE TABLE [supplyneeded] ( [SupplyNeededNum] bigint NOT NULL IDENTITY(1,1),
[Description] text DEFAULT NULL,
[DateAdded] date NOT NULL,
CONSTRAINT PK_SupplyNeededNum PRIMARY KEY ([SupplyNeededNum]) );