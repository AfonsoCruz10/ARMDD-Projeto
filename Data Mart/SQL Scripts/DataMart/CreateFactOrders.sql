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
        [UniPriceUSA] [Float] NULL,
        [UniPriceUK] [Float] NULL, 
        [TotalLineUSA] [Float] NULL,
        [TotalLineUK] [Float] NULL,
		[Discount] [Float] NOT NULL,
        [DiscountCostUSA] [Float] NULL,
        [DiscountCostUK] [Float] NULL,
        [FreightUSA] [Float] NULL,
        [FreightUK] [Float] NULL,
        CONSTRAINT [PK_FactOrders] PRIMARY KEY CLUSTERED 
        (
            [OrderDateKey] ASC,
            [ProductKey] ASC,
            [CustomerKey] ASC,
            [EmployeeKey] ASC,
            [ShipperKey] ASC,
            [ShipToKey] ASC,
            [CompanyLocalKey] ASC
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