USE Orders

SELECT ProductName, UnitPrice
FROM TblProducts
--WHERE UnitPrice >= 400 AND UnitPrice <= 700
--WHERE UnitPrice >= 400 OR UnitPrice <= 700
WHERE NOT UnitPrice = 884.11
GO
