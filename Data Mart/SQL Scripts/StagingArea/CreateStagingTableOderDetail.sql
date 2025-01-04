IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'OrderDetail')
	CREATE TABLE [dbo].[OrderDetail]
	(
		[OrderId] [int],
		[ProductId] [int],
		[UnitPrice] [money],
		[Quantity] [int],
		[Discount] [Float]
	)
ELSE
	TRUNCATE TABLE OrderDetail