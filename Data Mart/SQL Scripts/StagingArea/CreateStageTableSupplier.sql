IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Supplier')
	CREATE TABLE [dbo].[Supplier]
	(
		[SupplierId] [int],
		[CompanyName] [varchar](255),
		[ContactName] [varchar](255),
		[ContactTitle] [varchar](255),
		[Address] [varchar](255),
		[City] [varchar](255),
		[RegionId] [int],
		[PostalCode] [varchar](255),
		[Country] [varchar](255),
		[Phone] [varchar](255),
		[Fax] [varchar](255)
	)
ELSE
	TRUNCATE TABLE Supplier