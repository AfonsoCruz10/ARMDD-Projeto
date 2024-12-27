IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Category')
	CREATE TABLE [dbo].[Category]
	(
		[CategoryId] [int],
		[CategoryName] [varchar](50),
		[Description] [varchar](255)
	)
ELSE
	TRUNCATE TABLE Category