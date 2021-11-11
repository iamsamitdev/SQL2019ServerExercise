USE Orders

-- Sum
SELECT SUM (ProductCount) AS จำนวนชิ้นของสินค้าทั้งหมด
FROM TblOrderDetails
WHERE OrderID = 10278
GO

-- Group By
SELECT OrderID, SUM (ProductCount) AS จำนวนสินค้า
FROM TblOrderDetails
GROUP BY OrderID
GO

-- Group By and Where
SELECT OrderID, SUM(ProductCount) AS "Sum Of Product"
FROM TblOrderDetails
--WHERE SUM(ProductCount) > 30
GROUP BY OrderID
GO


