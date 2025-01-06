IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimProduct')
BEGIN
    CREATE TABLE [dbo].[DimProduct] (
        ProductKey INT NOT NULL IDENTITY(1,1),
        ProductIdUSA INT NOT NULL,
		ProductIdUK INT NOT NULL,
		ProductName NVARCHAR(40) NOT NULL,
        CategoryName NVARCHAR(255) NOT NULL,
        CategoryDescripton NVARCHAR(255) NOT NULL,
        QuantityPerUnit NCHAR(20) NOT NULL,
        UnitPriceUK MONEY NOT NULL,
        UnitPriceUSA MONEY NOT NULL,
        UnitsInStockUK INT NOT NULL,
        UnitsInStockUSA INT NOT NULL,
        UnitsOnOrderUK INT NOT NULL,
        UnitsOnOrderUSA INT NOT NULL,
		ReorderLevel INT NOT NULL,
        Discontinued INT NOT NULL,
        EffectiveDate DATE NOT NULL,
        ExpiredDate DATE NULL,
        IsCurrent INT NOT NULL,
        CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED 
        (
            [ProductKey] ASC
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