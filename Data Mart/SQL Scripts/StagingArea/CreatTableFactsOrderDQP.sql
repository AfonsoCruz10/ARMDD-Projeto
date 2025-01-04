IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'OrderDQP')

    CREATE TABLE [dbo].[OrderDQP] (
        [OrderId] [int],
        [OrderDate] [date],
        [RequiredDate] [date],
        [ShippedDate] [date],
		[ProductId] [int],
		[CustomerIdUSA] [nvarchar](255),
		[CustomerIdUK] [int],
        [EmployeeId] [int],
        [ShipperId] [int],
		[ShipToNameUSA][nvarchar](255),
        [ShipToIdUK] [int],
		[Quantity] [int],
        [UniPriceUSA] [Money],
        [UniPriceUK] [Money],
        [Discount] [Float],
		[DQP] [nvarchar](100)
     )
ELSE TRUNCATE TABLE [dbo].[OrderDQP];
