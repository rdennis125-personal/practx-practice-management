CREATE TABLE [claimtracking] ( [ClaimTrackingNum] bigint NOT NULL IDENTITY(1,1),
[ClaimNum] bigint NOT NULL,
[TrackingType] varchar(255) NOT NULL,
[UserNum] bigint NOT NULL,
[DateTimeEntry] timestamp NOT NULL DEFAULT GETDATE(),-- ON UPDATE GETDATE(),
[Note] text NOT NULL,
[TrackingDefNum] bigint NOT NULL,
[TrackingErrorDefNum] bigint NOT NULL,
CONSTRAINT PK_ClaimTrackingNum PRIMARY KEY ([ClaimTrackingNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_ClaimNum] ON [claimtracking] ([ClaimNum]);

GO
CREATE NONCLUSTERED INDEX [IX_UserNum] ON [claimtracking] ([UserNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TrackingDefNum] ON [claimtracking] ([TrackingDefNum]);

GO
CREATE NONCLUSTERED INDEX [IX_TrackingErrorDefNum] ON [claimtracking] ([TrackingErrorDefNum]);