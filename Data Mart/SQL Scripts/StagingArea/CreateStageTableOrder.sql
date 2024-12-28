IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Order')
	CREATE TABLE [dbo].[Order]
	(
		[OrderId] [int],
		[CustomerId] [nvarchar](255),
		[EmployeeId] [int],
		[OrderDate] [date],
		[RequiredDate] [date],
		[ShippedDate] [date],
		[ShipperId] [int],
		[Freight] [float],
		[ShipName] [nvarchar](255),
		[ShipAddress] [nvarchar](255),
		[ShipCity] [nvarchar](255),
		[ShipRegion] [nvarchar](255),	
		[ShipPostalCode] [nvarchar](255),
		[ShipCountry] [nvarchar](255)
	)
ELSE
	TRUNCATE TABLE [Order]