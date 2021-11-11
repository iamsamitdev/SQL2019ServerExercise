USE Orders

-- HAVING
SELECT OrderID, SUM(ProductCount) AS "Sum Of Product"
FROM TblOrderDetails
GROUP BY OrderID
HAVING SUM(ProductCount) > 100
GO

-- ORDER BY
SELECT OrderID, ProductCount 
FROM TblOrderDetails
--ORDER BY OrderID
--ORDER BY OrderID DESC
--ORDER BY 1 DESC
--ORDER BY 2 DESC
ORDER BY OrderID DESC, ProductCount ASC
GO