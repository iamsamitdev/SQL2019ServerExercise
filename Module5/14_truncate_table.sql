USE Orders

-- ลบข้อมูลทั้งหมดในตารางโดยจะไม่ Rest ค่า Index 
DELETE TEST_INSERT

-- เคลียร์ข้อมูลออกจากตาราง TEST_INSERT และ Reset Index ไอดีกลับเป็นค่าเริ่มตัน
TRUNCATE TABLE TEST_INSERT

GO

-- ทดสอบอ่านข้อมูล
SELECT * FROM TEST_INSERT

GO
