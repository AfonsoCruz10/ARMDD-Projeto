IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'ProductDQP')
	CREATE TABLE [dbo].[ProductDQP]
	(
		[ProductIdUK] [int],
		[ProductIdUSA] [int],
		[CategoryId] [int],
		[QuantityPerUnitId] [int],
		[DQP] [nvarchar](100)
	)
ELSE
	TRUNCATE TABLE ProductDQP