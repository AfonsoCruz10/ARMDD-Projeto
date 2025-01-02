IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Category')
	CREATE TABLE [dbo].[Category]
	(
		[CategoryId] int,
		[CategoryName] [nvarchar](15),
		[Description] [ntext]
	)
ELSE
	TRUNCATE TABLE Category