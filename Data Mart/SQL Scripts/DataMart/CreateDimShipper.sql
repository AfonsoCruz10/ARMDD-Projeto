IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimShipper')
BEGIN
    CREATE TABLE [dbo].[DimShipper] (
        ShipperKey INT NOT NULL IDENTITY(1,1),
        ShipperId INT NOT NULL,
        CompanyName NVARCHAR(255) NOT NULL,
        Phone NVARCHAR(255) NOT NULL,
        CONSTRAINT [PK_DimShipper] PRIMARY KEY CLUSTERED 
        (
            [ShipperKey] ASC
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