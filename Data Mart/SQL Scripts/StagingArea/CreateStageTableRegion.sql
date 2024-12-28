IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Region')
	CREATE TABLE [dbo].[Region]
	(
		[RegionId] [int],
		[RegionDescription] [nvarchar](255)
	)
ELSE
	TRUNCATE TABLE Region