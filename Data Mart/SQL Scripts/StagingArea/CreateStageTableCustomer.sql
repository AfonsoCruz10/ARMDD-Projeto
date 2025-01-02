IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Customer')
	CREATE TABLE [dbo].[Customer]
	(
		[CustomerId] [nvarchar](255),
		[CompanyName] [nvarchar](255),
		[ContactName] [nvarchar](255),
		[ContactTitle] [nvarchar](255),
		[Address] [nvarchar](255),
		[City] [nvarchar](255),
		[RegionId] [int],
		[PostalCode] [nvarchar](255),
		[Country] [nvarchar](255),
		[Phone] [nvarchar](255),
		[Fax] [nvarchar](24)
	)
ELSE
	TRUNCATE TABLE Customer