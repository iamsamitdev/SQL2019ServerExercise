USE Orders
GO

-- การสร้าง Store Procedure
CREATE PROCEDURE Get_Products_By_Category
	@CategoryID int
AS
BEGIN
	SELECT * FROM TblProducts /* จะคิวรีข้อมูลจากตาราง TblProducts */
	WHERE CategoryID=@CategoryID /* ตามชนิดสินค้า ที่ส่งมาเป็นพารามิเตอร์ */
	RETURN
END

-- ทดสอบเรียกใช้งาน Get_Products_By_Category
EXEC Get_Products_By_Category 3
