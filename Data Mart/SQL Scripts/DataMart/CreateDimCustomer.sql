IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimCustomer')
BEGIN
    CREATE TABLE [dbo].[DimCustomer] (
        CustomerKey INT IDENTITY(1,1) NOT NULL,
		CustomerIdUK INT NOT NULL,
        CustomerIdUSA NVARCHAR(255) NOT NULL,
        CompanyName NVARCHAR(255) NOT NULL,
        ContactName NVARCHAR(30) NOT NULL,
        Title NVARCHAR(30) NOT NULL,
        [Address] NVARCHAR(255) NOT NULL,
        CityName NVARCHAR(255) NOT NULL,
        RegionDescription NVARCHAR(255) NOT NULL,
		PostalCode NVARCHAR(255) NOT NULL,
		Country NVARCHAR(255) NOT NULL,
        CountryCode NCHAR(2) NOT NULL,
        Phone NVARCHAR(255) NOT NULL,
        Fax NVARCHAR(24) NOT NULL,
        EffectiveDate DATE NOT NULL,
        ExpiredDate DATE NULL,
        IsCurrent INT NOT NULL,
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