IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Category')
	CREATE TABLE [dbo].[Category]
	(
		[CategoryId] [nvarchar](50),
		[CategoryName] [nvarchar](50),
		[Description] [nvarchar](255)
	)
ELSE
	TRUNCATE TABLE Category