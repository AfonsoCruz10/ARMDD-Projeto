IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'FactOrders')
BEGIN
    CREATE TABLE [dbo].[FactOrders] (
        [OrderDate] [int] NOT NULL,
        [RequiredDate] [int] NOT NULL,
        [ShippedDate] [int] NOT NULL,
        [ProductKey] [int] NOT NULL,
        [CustomerKey] [int] NOT NULL,
        [EmployeeKey] [int] NOT NULL,
        [ShipperKey] [int] NOT NULL,
        [ShipToKey] [int] NOT NULL,
        [SupplierKey] [int] NOT NULL,
        [CurrencyKey] [int] NOT NULL,
        [CompanyLocalKey] [int] NOT NULL,
        [OrderID] [int] NOT NULL,
        [UniPriceUK] [DECIMAL](18, 2) NOT NULL, 
        [UniPriceUSA] [DECIMAL](18, 2) NOT NULL,
        [Quantity] [int] NOT NULL,
        [TotalLineUK] [DECIMAL](18, 2) NOT NULL,
        [TotalLineUSA] [DECIMAL](18, 2) NOT NULL,
        [DiscountCostUK] [DECIMAL](18, 2) NOT NULL,
        [DiscountCostUSA] [DECIMAL](18, 2) NOT NULL,
        [FreightUK] [DECIMAL](18, 2) NOT NULL,
        [FreightUSA] [DECIMAL](18, 2) NOT NULL,
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