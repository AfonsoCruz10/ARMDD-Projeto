IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'SupplierDQP')
BEGIN
    CREATE TABLE [dbo].[SupplierDQP] (
        SupplierId INT NOT NULL,
        ContactTitle NVARCHAR(255) NULL,
        City NVARCHAR(255) NULL,
        Region NVARCHAR(255) NULL,
		CountryCode NVARCHAR(2) NULL,
        Country NVARCHAR(255) NULL,
        DQP NVARCHAR(100)
    ) 
END;