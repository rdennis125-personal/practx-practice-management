CREATE TABLE [gradingscaleitem] ( [GradingScaleItemNum] bigint NOT NULL IDENTITY(1,1),
[GradingScaleNum] bigint NOT NULL,
[GradeShowing] varchar(255) NOT NULL,
[GradeNumber] float NOT NULL,
[Description] varchar(255) NOT NULL,
CONSTRAINT PK_GradingScaleItemNum PRIMARY KEY ([GradingScaleItemNum])
);

GO
CREATE NONCLUSTERED INDEX [IX_GradingScaleNum] ON [gradingscaleitem] ([GradingScaleNum]);