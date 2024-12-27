IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimCustomer')
BEGIN
    CREATE TABLE [dbo].[DimCustomer] (
        CustomerKey INT IDENTITY(1,1) NOT NULL,
        CustomerId NVARCHAR(255) NOT NULL,
        CompanyName NVARCHAR(255) NULL,
        ContactName NVARCHAR(10) NULL,
        Title NVARCHAR(10) NULL,
        [Address] NVARCHAR(255) NULL,
        CityName NVARCHAR(255) NULL,
        RegionDescription NVARCHAR(255) NULL,
        CountryCode NVARCHAR(25) NULL,
        Phone NVARCHAR(255) NULL,
        Fax NVARCHAR(10) NULL,
        EffectiveDate DATE NULL,
        ExpiredDate DATE NULL,
        IsCurrent INT NULL,
        CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED 
        (
            [CustomerKey] ASC
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