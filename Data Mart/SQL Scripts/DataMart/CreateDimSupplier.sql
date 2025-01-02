IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimSupplier')
BEGIN
    CREATE TABLE [dbo].[DimSupplier] (
        SupplierKey INT IDENTITY(1,1) NOT NULL,
        SupplierIdUK INT NULL,
		SupplierIdUSA INT NULL,
        CompanyName NVARCHAR(255) NULL,
        ContactName NVARCHAR(255) NULL,
        ContactTitle NVARCHAR(255) NULL,
        [Address] NVARCHAR(255) NULL,
        City NVARCHAR(255) NULL,
        Region NVARCHAR(255) NULL,
        PostalCode NVARCHAR(255) NULL,
		CountryCode NVARCHAR(2) NULL,
        Country NVARCHAR(255) NULL,
        Phone NVARCHAR(255) NULL,
        Fax NVARCHAR(255) NULL,
        EffectiveDate DATE NULL,
        ExpiredDate DATE NULL,
        IsCurrent INT NULL,
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

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-SupplierId]
	ON [dbo].[DimSupplier] (
	    [SupplierIdUSA] ASC,
	    [SupplierIdUK] ASC
	)
	WITH (
	    PAD_INDEX = OFF, 
	    STATISTICS_NORECOMPUTE = OFF, 
	    SORT_IN_TEMPDB = OFF, 
	    DROP_EXISTING = OFF, 
	    ONLINE = OFF, 
	    ALLOW_ROW_LOCKS = ON, 
	    ALLOW_PAGE_LOCKS = ON, 
	    OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
	);
	
	CREATE NONCLUSTERED INDEX [NonClusteredIndex-SupplierIdUSA]
	ON [dbo].[DimSupplier] (
	    [SupplierIdUSA] ASC
	)
	WITH (
	    PAD_INDEX = OFF, 
	    STATISTICS_NORECOMPUTE = OFF, 
	    SORT_IN_TEMPDB = OFF, 
	    DROP_EXISTING = OFF, 
	    ONLINE = OFF, 
	    ALLOW_ROW_LOCKS = ON, 
	    ALLOW_PAGE_LOCKS = ON, 
	    OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
	);
	
	CREATE NONCLUSTERED INDEX [NonClusteredIndex-SupplierIdUK]
	ON [dbo].[DimSupplier] (
	    [SupplierIdUK] ASC
	)
	WITH (
	    PAD_INDEX = OFF, 
	    STATISTICS_NORECOMPUTE = OFF, 
	    SORT_IN_TEMPDB = OFF, 
	    DROP_EXISTING = OFF, 
	    ONLINE = OFF, 
	    ALLOW_ROW_LOCKS = ON, 
	    ALLOW_PAGE_LOCKS = ON, 
	    OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
	);
END;