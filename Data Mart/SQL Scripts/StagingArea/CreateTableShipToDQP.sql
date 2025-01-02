IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'ShipToDQP' AND schema_id = SCHEMA_ID('dbo'))

    CREATE TABLE [dbo].[ShipToDQP] (
		ShipToId INT NULL,
        ShipCityId INT NULL,
        ShipRegionId INT NULL,
		ShipCountry NVARCHAR(255) NULL,
        ShipCountryCode NCHAR(2) NULL,
		DQP NVARCHAR(100)
		)
ELSE 
	TRUNCATE TABLE [dbo].[ShipToDQP]