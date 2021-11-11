USE Orders
GO

CREATE PROCEDURE Test_Transaction @cnt int=NULL AS
BEGIN
	BEGIN TRAN
		UPDATE TblProducts
		SET UnitPrice = UnitPrice * 1.1 /* เพิ่มราคาสินค้าอีก 10% */
		IF @cnt IS NULL 
			ROLLBACK TRAN /* ถ้าค่า @cnt เท่ากับ NULL แล้ว ก็ให้ยกเลิกการทำงาน */
		ELSE
			COMMIT TRAN /* ถ้าค่า @cnt ไม่เท่ากับ NULL แล้วก็ให้ยืนยันการทำงาน */
END

GO

-- เรียกใช้งาน Test_Transaction
--EXEC Test_Transaction
EXEC Test_Transaction 1
GO

-- ทดสอบ SELECT Table TblProducts
SELECT ProductID, UnitPrice FROM TblProducts
GO

