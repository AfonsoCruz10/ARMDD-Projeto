IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'OrderDetail')
	CREATE TABLE [dbo].[OrderDetail]
	(
		[OrderId] [int],
		[ProductId] [int],
		[UnitPrice] [int],
		[Quantity] [int],
		[Discount] [int]
	)
ELSE
	TRUNCATE TABLE OrderDetail