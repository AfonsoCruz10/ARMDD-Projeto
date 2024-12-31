IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'ShipToDQP' AND schema_id = SCHEMA_ID('dbo'))

    CREATE TABLE [dbo].[ShipToDQP] (
		ShipToId INT NULL,
        ShipToName NVARCHAR(255) NULL,
        ShipToAddress NVARCHAR(255) NULL,
        ShipCity NVARCHAR(255) NULL,
        ShipRegion NVARCHAR(255) NULL,
        ShipPostalCode NVARCHAR(255) NULL,
		ShipCountry NVARCHAR(255) NULL,
        ShipCountryCode NCHAR(2) NULL,
		CompanyLocalCode NVARCHAR(25) NULL,
		DQP NVARCHAR(100)
		)
ELSE 
	TRUNCATE TABLE [dbo].[ShipToDQP]