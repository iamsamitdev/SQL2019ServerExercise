USE Orders

-- ลองเรียกดูข้อมูลในตาราง TblProducts
SELECT * FROM TblProducts
ORDER BY ProductID
GO

-- การใช้คำสั่ง LEFT JOIN
SELECT TblProducts.*, TblOrderDetails.ProductCount
FROM TblProducts LEFT OUTER JOIN TblOrderDetails
ON TblProducts.ProductID = TblOrderDetails.ProductID
WHERE TblOrderDetails.ProductCount IS NOT NULL
ORDER BY TblProducts.ProductID

GO