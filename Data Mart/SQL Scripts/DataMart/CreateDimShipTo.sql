IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimShipTo' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    CREATE TABLE [dbo].[DimShipTo] (
        ShipToKey INT IDENTITY(1,1) NOT NULL,
        ShipToName NVARCHAR(255) NULL,
        ShipToAddress NVARCHAR(255) NULL,
        ShipCity NVARCHAR(255) NULL,
        ShipRegion NVARCHAR(255) NULL,
        ShipPostalCode NVARCHAR(255) NULL,
        ShipCountryCode NVARCHAR(255) NULL,
        EffectiveDate DATE NULL,
        ExpiredDate DATE NULL,
        IsCurrent INT NULL,
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