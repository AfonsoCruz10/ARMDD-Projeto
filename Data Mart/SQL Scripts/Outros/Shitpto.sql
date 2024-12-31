SELECT TOP (1000) [OrderId]
      ,[CustomerId]
      ,[EmployeeId]
      ,[OrderDate]
      ,[RequiredDate]
      ,[ShippedDate]
      ,[ShipperId]
      ,[Freight]
      ,[ShipName]
      ,[ShipAddress]
      ,[ShipCity]
      ,[ShipRegion]
      ,[ShipPostalCode]
      ,[ShipCountry]
  FROM [OperationalDB_USA].[dbo].[Order]
 
SELECT 
    *
FROM 
    OperationalDB_UK.dbo.ShipTo AS UK

SELECT 
    *
FROM 
    OperationalDB_USA.dbo.[Order] AS USA

SELECT 
    ST.ShipToID,
    ST.ShipToName,
    ST.ShipToAddress,
    ST.ShipCityID,
    ST.ShipPostalCode,
    ST.ShipCountryCode,
    ST.CreateDate,
    ST.LastUpdateDate,
    R.RegionDescription AS ShipRegionName
FROM 
    OperationalDB_UK.dbo.ShipTo ST
INNER JOIN 
    OperationalDB_UK.dbo.Regions R
ON 
    ST.ShipRegionID = R.RegionID;



SELECT DISTINCT USA.ShipToCountryCode
FROM OperationalDB_USA.dbo.ShipToCountry_Lookup AS USA;
SELECT DISTINCT T.ShipCountryCode AS UK
FROM OperationalDB_UK.dbo.ShipTo AS T;


SELECT DISTINCT T.ShipCountryCode
FROM OperationalDB_UK.dbo.ShipTo AS T
LEFT JOIN OperationalDB_USA.dbo.ShipToCountry_Lookup AS USA
    ON T.ShipCountryCode = USA.ShipToCountryCode
WHERE USA.ShipToCountryCode IS NULL;


SELECT DISTINCT T.ShipCountryCode
FROM OperationalDB_UK.dbo.ShipTo AS T
LEFT JOIN OperationalDB_USA.dbo.ShipToCountry_Lookup AS USA
    ON T.ShipCountryCode = USA.ShipToCountryCode
WHERE USA.ShipToCountryCode IS NULL;
