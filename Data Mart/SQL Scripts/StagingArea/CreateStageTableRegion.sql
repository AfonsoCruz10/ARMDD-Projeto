IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Region')
	CREATE TABLE [dbo].[Region]
	(
		[RegionId] [int],
		[RegionDescription] [varchar](255)
	)
ELSE
	TRUNCATE TABLE Region