IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'FactOrders')
BEGIN
    CREATE TABLE [dbo].[FactOrders] (
        [OrderDateKey] [int] NOT NULL,
        [RequiredDateKey] [int] NOT NULL,
        [ShippedDateKey] [int] NULL,
        [ProductKey] [int] NOT NULL,
        [CustomerKey] [int] NOT NULL,
        [EmployeeKey] [int] NOT NULL,
        [ShipperKey] [int] NOT NULL,
        [ShipToKey] [int] NOT NULL,
        [SupplierKey] [int] NOT NULL,
        [CurrencyKey] [int] NOT NULL,
        [CompanyLocalKey] [int] NOT NULL,
        [OrderID] [int] NOT NULL,
        [Quantity] [int] NOT NULL,
        [UniPriceUSA] [Money] NULL,
        [UniPriceUK] [Money] NULL, 
        [TotalLineUSA] [Money] NULL,
        [TotalLineUK] [Money] NULL,
		[Discount] [Float] NOT NULL,
        [DiscountCostUSA] [Money] NULL,
        [DiscountCostUK] [Money] NULL,
        [FreightUSA] [Money] NULL,
        [FreightUK] [Money] NULL,
        CONSTRAINT [PK_FactOrders] PRIMARY KEY CLUSTERED 
        (
            [OrderDateKey] ASC,
            [ProductKey] ASC,
            [CustomerKey] ASC,
            [EmployeeKey] ASC,
            [ShipperKey] ASC,
            [ShipToKey] ASC,
			[SupplierKey] ASC
        )
        WITH (
            PAD_INDEX = OFF, 
            STATISTICS_NORECOMPUTE = OFF, 
            IGNORE_DUP_KEY = OFF, 
            ALLOW_ROW_LOCKS = ON, 
            ALLOW_PAGE_LOCKS = ON
        )
        ON [PRIMARY]
    ) ON [PRIMARY]
END;