IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimEmployee' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    CREATE TABLE [dbo].[DimEmployee] (
        EmployeeKey INT IDENTITY(1,1) NOT NULL,
        EmployeeId INT NOT NULL,
        [Name] NVARCHAR(255) NULL,
        Title NVARCHAR(255) NULL,
        BirthDate DATE NULL,
        HireDate DATE NULL,
        [Address] NVARCHAR(255) NULL,
        CityName NVARCHAR(255) NULL,
        RegionDescription NVARCHAR(255) NULL,
        CompanyLocalCode NVARCHAR(25) NULL,
        PostalCode NVARCHAR(255) NULL,
        HomePhone NVARCHAR(255) NULL,
        Extension NVARCHAR(10) NULL,
        ReportsToKey INT NULL,
        EffectiveDate DATE NULL,
        ExpiredDate DATE NULL,
        IsCurrent INT NULL,
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