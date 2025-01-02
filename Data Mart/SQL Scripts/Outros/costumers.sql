SELECT TOP (1000) [CustomerId]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
      ,[RegionId]
      ,[PostalCode]
      ,[Country]
      ,[Phone]
      ,[Fax]
  FROM [OperationalDB_USA].[dbo].[Customer]
  SELECT TOP (1000) [CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitleID]
      ,[Address]
      ,[CityID]
      ,[RegionID]
      ,[PostalCode]
      ,[CountryCode]
      ,[Phone]
      ,[Fax]
      ,[CreateDate]
      ,[LastUpdateDate]
  FROM [OperationalDB_UK].[dbo].[Customers]


  -- Comparação básica usando nome da empresa, nome do contato e telefone
SELECT 
    USA.CustomerId AS USA_CustomerId,
    USA.CompanyName AS USA_CompanyName,
    USA.ContactName AS USA_ContactName,
    USA.Phone AS USA_Phone,
    UK.CustomerID AS UK_CustomerId,
    UK.CompanyName AS UK_CompanyName,
    UK.ContactName AS UK_ContactName,
    UK.Phone AS UK_Phone
FROM [OperationalDB_USA].[dbo].[Customer] AS USA
INNER JOIN [OperationalDB_UK].[dbo].[Customers] AS UK
    ON USA.CompanyName = UK.CompanyName
    AND USA.ContactName = UK.ContactName
    AND USA.Phone = UK.Phone;
