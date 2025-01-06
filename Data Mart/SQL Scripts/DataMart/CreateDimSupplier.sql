IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimSupplier')
BEGIN
    CREATE TABLE [dbo].[DimSupplier] (
        SupplierKey INT IDENTITY(1,1) NOT NULL,
        SupplierIdUK INT NOT NULL,
		SupplierIdUSA INT NOT NULL,
        CompanyName NVARCHAR(255) NOT NULL,
        ContactName NVARCHAR(255) NOT NULL,
        ContactTitle NVARCHAR(255) NOT NULL,
        [Address] NVARCHAR(255) NOT NULL,
        City NVARCHAR(255) NOT NULL,
        Region NVARCHAR(255) NOT NULL,
        PostalCode NVARCHAR(255) NOT NULL,
        Country NVARCHAR(255) NOT NULL,
		CountryCode NVARCHAR(2) NOT NULL,
        Phone NVARCHAR(255) NOT NULL,
        Fax NVARCHAR(255) NOT NULL,
        EffectiveDate DATE NOT NULL,
        ExpiredDate DATE NULL,
        IsCurrent INT NOT NULL,
        CONSTRAINT [PK_DimSupplier] PRIMARY KEY CLUSTERED 
        (
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