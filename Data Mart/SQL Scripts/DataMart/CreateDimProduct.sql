IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimProduct')
BEGIN
    CREATE TABLE [dbo].[DimProduct] (
        ProductKey INT NOT NULL IDENTITY(1,1),
        ProductId INT NOT NULL,
        CategoryName NVARCHAR(255) NULL,
        CategoryDescripton NVARCHAR(255) NULL,
        QuantityPerUnit INT NULL,
        UnitPriceUK INT NULL,
        UnitPriceUSA INT NULL,
        UnitsInStockUK INT NULL,
        UnitsInStockUSA INT NULL,
        UnitsOnOrderUK INT NULL,
        UnitsOnOrderUSA INT NULL,
        Discontinued INT NULL,
        EffectiveDate DATE NULL,
        ExpiredDate DATE NULL,
        IsCurrent INT NULL,
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