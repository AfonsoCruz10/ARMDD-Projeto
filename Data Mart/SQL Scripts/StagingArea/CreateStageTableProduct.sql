IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Product')
	CREATE TABLE [dbo].[Product]
	(
		[ProductId] [int],
		[ProductName] [nvarchar](255),
		[SupplierId] [int],
		[CategoryId] [int],
		[QuantityPerUnit] [nvarchar](255),
		[UnitPrice] [float],
		[UnitsInStock] [int],
		[UnitsOnOrder] [int],
		[ReorderLevel] [int],
		[Discontinued] [nvarchar](255)
	)
ELSE
	TRUNCATE TABLE Product