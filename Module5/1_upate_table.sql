USE Orders

-- การอัพเดทข้อมูลในตาราง TblProducts
UPDATE TblProducts
SET VATFlag = 0
FROM TblProducts TP INNER JOIN TblOrderDetails TOD
ON TP.ProductID = TOD.ProductID

GO

-- ทดสอบเรียกดูข้อมูลในตารางที่ถูกอัพเดท
SELECT * FROM TblProducts
ORDER BY ProductID DESC

GO