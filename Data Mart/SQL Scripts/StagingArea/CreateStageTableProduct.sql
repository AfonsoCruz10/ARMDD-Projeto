IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Product')
	CREATE TABLE [dbo].[Product]
	(
		[ProductId] [int],
		[ProductName] [varchar](255),
		[SupplierId] [int],
		[CategoryId] [int],
		[QuantityPerUnit] [varchar](255),
		[UnitPrice] [float],
		[UnitsInStock] [int],
		[UnitsOnOrder] [int],
		[ReorderLevel] [int],
		[Discontinued] [varchar](255)
	)
ELSE
	TRUNCATE TABLE Product