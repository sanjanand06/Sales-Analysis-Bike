--Cleansed DIMCustomer table---
SELECT c.CustomerKey AS [Customer Key]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.firstName as [FirstName]
      --,[MiddleName]
      ,c.lastname as [LastName]
	  ,c.FirstName + ' ' + c.LastName AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.datefirstpurchase AS [DateFirstPurchase]
      --,[CommuteDistance]
	  ,g.city AS [Customer City]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS g
  ON g.GeographyKey = c.GeographyKey
  ORDER BY
  CustomerKey ASC  --Ordered by Customer Key
