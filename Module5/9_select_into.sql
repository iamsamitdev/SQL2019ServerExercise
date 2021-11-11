USE Orders

IF OBJECT_ID('New_Table') IS NOT NULL /* เช็คว่ามีชื่อ table New_Table หรือไม่ */
DROP TABLE New_Table /* สั่งลบ New_Table ออก */

-- Select และสร้าง Table ใหม่
SELECT OrderID, SUM(ProductCount) AS 'Sum of ProductCount'
INTO New_Table /* สร้างตารางใหม่ชื่อ New_Table */
FROM TblOrderDetails
GROUP BY OrderID
GO

-- ทดสอบเรียกดูข้อมูลจาก Table New_Table
SELECT * FROM New_Table
GO