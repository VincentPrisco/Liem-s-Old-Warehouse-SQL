USE Liem_Warehouse

-- No 1
SELECT
	ItemId,
	SUM(Quantity) AS [Total Quantity]
FROM
	SupplyTransaction a,
	Factory b,
	Item c
WHERE
	a.FactoryId = b.FactoryId
	AND a.SupplyItemId = c.ItemId
	AND DATEPART(WEEKDAY,SupplyDate) = 2
	AND FactoryName LIKE '% %'
GROUP BY ItemId

-- No 2
SELECT
	[ItemId] = 'IT' + CAST(CAST(RIGHT(ItemId,3) AS INT) AS VARCHAR),
	CategoryName,
	SUM(DistributePrice*Quantity) AS [Total Income]
FROM
	Item a,
	Category b,
	DistributeTransaction c
WHERE
	a.CategoryId = b.CategoryId
	AND a.ItemId = c.DistributeItemId
	AND a.Stock > 20
	AND a.CategoryId = 'CT002'
GROUP BY 
	ItemId,
	CategoryName

-- No 3
SELECT
	SupplyId,
	CONVERT(VARCHAR(12),SupplyDate,107) AS [SupplyDate],
	SUM(Quantity) AS [Total Item Purchased],
	SUM(Quantity*SupplyPrice) AS [Total Expense]
FROM
	SupplyTransaction a,
	Item b
WHERE
	a.SupplyItemId = b.ItemId
	AND YEAR(SupplyDate)%2=0
	AND ItemName LIKE '%a%' 
	AND ItemName LIKE '%A%'
GROUP BY 
	SupplyId,
	SupplyDate

-- No 4
SELECT
	StaffId,
	SUBSTRING (StaffName, 1, CHARINDEX(' ',StaffName)) AS [Staff First Name],
	StaffSalary,
	DATENAME (WEEKDAY, DistributeDate) AS [Distribute Day],
	SUM(Quantity) AS [Item Distributed]
FROM
	Staff a,
	DistributeTransaction b
WHERE
	a.StaffId = b.DistributeStaffId
	AND Quantity > 40
	AND StaffSalary = (SELECT MIN (StaffSalary) FROM Staff)
GROUP BY 
	StaffId, 
	StaffName, 
	StaffSalary, 
	DistributeDate

-- No 5
SELECT
	a.SupplyId,
	c.FactoryName,
	b.StaffName,
	a.SupplyDate
FROM
	SupplyTransaction a,
	Staff b,
	Factory c
WHERE
	a.SupplyStaffId = b.StaffId
	AND a.FactoryId = c.FactoryId
	AND YEAR(StaffDOB) BETWEEN 1990 AND 2000
	AND Rating >=
			(	SELECT 
					AVG (Rating)
				FROM
					Factory
			)

-- No 6
SELECT 
	a.CategoryName,
	SUM(Quantity) AS [Total Quantity]
FROM
	Category a,
	Item b,
	DistributeTransaction c
WHERE 
	c.DistributeItemId = b.ItemId
	AND a.CategoryId = b.CategoryId 
	AND RIGHT (DistributeId,1)%2=0
	AND Quantity IN 
			(	SELECT 
					Quantity
				FROM 
					DistributeTransaction
				GROUP BY 
					Quantity
				HAVING 
					SUM(Quantity) >= 50
			)
GROUP BY CategoryName

-- No 7
SELECT
	StaffId,
	SUBSTRING(StaffName, CHARINDEX(' ', StaffName)+1, LEN(StaffName)) AS [Staff Last Name],
	SUM(b.Quantity+c.Quantity) AS [Total Transaction]
FROM
	Staff a,
	SupplyTransaction b,
	DistributeTransaction c
WHERE
	a.StaffId = b.SupplyStaffId
	AND a.StaffId = c.DistributeStaffId
	AND StaffName LIKE '% %'
	AND StaffSalary >
				(	SELECT
						AVG(StaffSalary)
					FROM 
						Staff
				)
GROUP BY 
	StaffId, 
	StaffName

-- No 8
SELECT 
	DistributeId,
	DistributorCity,
	CONVERT(VARCHAR(12),DistributeDate,103) AS [DistributeDate],
	SUM(Quantity) AS [Total Quantity]
FROM
	DistributeTransaction,
	Item
WHERE
	DistributeTransaction.DistributeItemId = Item.ItemId
	AND DistributeStaffId BETWEEN 'ST001' AND 'ST005'
	AND Stock BETWEEN 100 AND 1000
	AND DistributePrice <
			(	SELECT
					AVG (DistributePrice)
				FROM 
					Item
			)
GROUP BY 
	DistributeId,
	DistributorCity, 
	DistributeDate
ORDER BY 
	DistributeId DESC;

-- No 9
GO
	CREATE VIEW [ViewGoodFactorySupplies] AS
	SELECT
		Factory.FactoryId,
		Factory.FactoryName,
		SUM(Quantity) AS [Total Quantity]
	FROM
		Factory,
		SupplyTransaction
	WHERE
		Factory.FactoryId=SupplyTransaction.FactoryId
		AND YEAR(SupplyDate)= '2018'
		AND Rating >
			(	SELECT
					AVG(Rating)
				FROM 
					Factory
			)
	GROUP BY Factory.FactoryId,Factory.FactoryName
	GO

-- No 10
GO
	CREATE VIEW [WeekendDistributeView] AS
	SELECT 
		b.DistributorId,
		c.StaffId,
		COUNT(DISTINCT a.DistributeId) AS [Recorded Transaction],
		SUM(a.Quantity) AS [Total Item Distributed]
	FROM 
		DistributeTransaction a,
		Distributor b,
		Staff c
	WHERE
		a.DistributorId = b.DistributorId
		AND a.DistributeStaffId = c.StaffId
		AND (DATEPART(WEEKDAY,DistributeDate) = 1 OR DATEPART(WEEKDAY,DistributeDate) = 7)
		AND (a.DistributeItemId BETWEEN 'IT006' AND 'IT008')
	GROUP BY 
		b.DistributorId, c.StaffId
	GO