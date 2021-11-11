USE Orders

-- ลองเรียกดูข้อมูลในตาราง TblProducts
SELECT * FROM TblOrderDetails
ORDER BY OrderID
GO

-- การใช้คำสั่ง RIGHT JOIN
SELECT TblProducts.*, TblOrderDetails.ProductCount
FROM TblProducts RIGHT OUTER JOIN TblOrderDetails 
ON TblProducts.ProductID = TblOrderDetails.ProductID
ORDER BY TblProducts.ProductID

GO