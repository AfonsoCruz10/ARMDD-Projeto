IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactOrders')	
	CREATE TABLE [dbo].[FactOrders](
		[OrderDate] [int] NOT NULL,
		[RequiredDate] [int] NOT NULL,
		[ShippedDate] [int] NOT NULL,
		[ProductKey] [int] NOT NULL,
		[CustomerKey] [int] NOT NULL,
		[ItemKey] [int] NOT NULL,
		[StoreKey] [int] NOT NULL,
		[EmployeeKey] [int] NOT NULL,
		[ShipperKey] [int] NOT NULL,
		[ShipToKey] [int] NOT NULL,
		[SupplierKey] [int] NOT NULL,
		[CurrencyKey] [int] NOT NULL,
		[CompanyLocalKey] [int] NOT NULL,
		[OrderID] [int] NOT NULL,
		[UniPriceUK] [int] NOT NULL,
		[UniPriceUSA] [int] NOT NULL,
		[Quantity] [int] NOT NULL,
		[TotalLineUK] [int] NOT NULL,
		[TotalLineUSA] [int] NOT NULL,
		[DiscountCostUK] [int] NOT NULL,
		[DiscountCostUSA] [int] NOT NULL,
		[FreightUK] [int] NOT NULL,
		[FreightUSA] [int] NOT NULL
	 CONSTRAINT [PK_FactOrders] PRIMARY KEY CLUSTERED 
	(
		[OrderDate] ASC,
		[RequiredDate] ASC,
		[ShippedDate] ASC,
		[ProductKey] ASC,
		[CustomerKey] ASC,
		[EmployeeKey] ASC,
		[ShipperKey] ASC,
		[ShipToKey] ASC,
		[SupplierKey] ASC,
		[CurrencyKey] ASC,
		[CompanyLocalKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]