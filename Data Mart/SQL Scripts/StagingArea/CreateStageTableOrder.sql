IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Order')
	CREATE TABLE [dbo].[Order]
	(
		[OrderId] [int],
		[CustomerId] [varchar](255),
		[EmployeeId] [int],
		[OrderDate] [date],
		[RequiredDate] [date],
		[ShippedDate] [date],
		[ShipperId] [int],
		[Freight] [float],
		[ShipName] [varchar](255),
		[ShipAddress] [varchar](255),
		[ShipCity] [varchar](255),
		[ShipRegion] [varchar](255),	
		[ShipPostalCode] [varchar](255),
		[ShipCountry] [varchar](255)
	)
ELSE
	TRUNCATE TABLE [Order]