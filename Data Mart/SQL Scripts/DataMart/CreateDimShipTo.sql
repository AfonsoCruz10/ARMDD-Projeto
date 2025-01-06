IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimShipTo' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    CREATE TABLE [dbo].[DimShipTo] (
        ShipToKey INT IDENTITY(1,1) NOT NULL,
		ShipToIdUSA INT NOT NULL,
		ShipToIdUK INT NOT NULL,
        ShipToName NVARCHAR(255) NOT NULL,
        ShipToAddress NVARCHAR(255) NOT NULL,
        ShipCity NVARCHAR(255) NOT NULL,
        ShipRegion NVARCHAR(255) NOT NULL,
        ShipPostalCode NVARCHAR(255) NOT NULL,
		ShipCountry NVARCHAR(255) NOT NULL,
        ShipCountryCode NCHAR(2) NOT NULL,
        EffectiveDate DATE NOT NULL,
        ExpiredDate DATE NULL,
        IsCurrent INT NOT NULL,
        CONSTRAINT [PK_DimShipTo] PRIMARY KEY CLUSTERED 
        (
            [ShipToKey] ASC
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