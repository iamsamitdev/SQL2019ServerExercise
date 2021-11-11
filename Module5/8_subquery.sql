USE Orders

-- Select with Sub query
SELECT CustomerName, ZipCode
FROM TblCustomers 
WHERE ZipCode = (
	SELECT ZipCode
	FROM TblCustomers
	WHERE CustomerName = 'GOOFY'
)
GO

-- Select with Self Join
SELECT TblCustomers.CustomerName, TblCustomers.ZipCode 
FROM TblCustomers INNER JOIN TblCustomers OtherCus
ON TblCustomers.ZipCode = OtherCus.ZipCode AND OtherCus.CustomerName = 'GOOFY'
GO