USE Orders
GO

-- สร้าง Views
CREATE VIEW ProductCountTop5
AS
SELECT TOP 5 TP.ProductName, TOD.ProductCount
FROM TblProducts TP INNER JOIN TblOrderDetails TOD
ON TP.ProductID = TOD.ProductID
ORDER BY TOD.ProductCount DESC

GO

-- อ่านข้อมูลจาก View ProductCountTop5
SELECT * FROM  ProductCountTop5

GO

