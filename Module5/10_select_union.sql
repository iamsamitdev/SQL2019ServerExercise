USE Orders

SELECT ProductID, ProductName
FROM TblProducts

UNION

SELECT CustomerID, CustomerName
FROM TblCustomers

ORDER BY ProductName ASC

GO