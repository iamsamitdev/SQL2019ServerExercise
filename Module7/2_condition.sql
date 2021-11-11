USE Orders

-- คำสั่ง IF...ELSE ตรวจสอบเงื่อนไข ว่ามีข้อมูลในตารางหรือไม่
IF EXISTS (SELECT * FROM TblProducts)
	PRINT 'ตารางนี้มีข้อมูลอยู่'
ELSE
	PRINT 'ไม่พบข้อมูลในตารางนี้'

GO

-- คำสั่ง CASE ตรวจสอบเงื่อนไขและเลือกแสดงผลตามเคสที่พบ
SELECT ProductName, UnitPrice, 
	'Classification' = CASE 
		WHEN UnitPrice < 200 THEN 'Low Price'
		WHEN UnitPrice BETWEEN 200 AND 500 THEN 'Medium Price'
		WHEN UnitPrice > 500 THEN 'Expensive Price'
		ELSE 'Unknow'
	END
FROM TblProducts