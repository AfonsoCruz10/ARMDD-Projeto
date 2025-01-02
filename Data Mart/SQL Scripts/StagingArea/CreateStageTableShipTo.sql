IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'ShipTo')
	CREATE TABLE [dbo].[ShipTo]
	(
		[ShipToId] [int] NOT NULL IDENTITY(1,1),
		[ShipName] [nvarchar](255),
		[ShipAddress] [nvarchar](255),
		[ShipCity] [nvarchar](255),
		[ShipRegion] [nvarchar](255),	
		[ShipPostalCode] [nvarchar](255),
		[ShipCountry] [nvarchar](255)
	)
	

ELSE
	TRUNCATE TABLE [ShipTo]