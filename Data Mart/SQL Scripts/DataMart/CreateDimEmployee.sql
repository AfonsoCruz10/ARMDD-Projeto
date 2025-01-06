IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimEmployee' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    CREATE TABLE [dbo].[DimEmployee] (
        EmployeeKey INT IDENTITY(1,1) NOT NULL,
        EmployeeIdUK INT NOT NULL,
		EmployeeIdUSA INT NOT NULL,
        [Name] NVARCHAR(255) NOT NULL,
        Title NVARCHAR(255) NOT NULL,
        BirthDate DATE NOT NULL,
        HireDate DATE NOT NULL,
        [Address] NVARCHAR(255) NOT NULL,
        CityName NVARCHAR(255) NOT NULL,
        RegionDescription NVARCHAR(255) NOT NULL,
        PostalCode NVARCHAR(255) NOT NULL,
        HomePhone NVARCHAR(255) NOT NULL,
        Extension NVARCHAR(10) NOT NULL,
        ReportsToKey INT NOT NULL,
        EffectiveDate DATE NOT NULL,
        ExpiredDate DATE NULL,
        IsCurrent INT NOT NULL,
        CONSTRAINT [PK_DimEmployee] PRIMARY KEY CLUSTERED 
        (
            [EmployeeKey] ASC
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