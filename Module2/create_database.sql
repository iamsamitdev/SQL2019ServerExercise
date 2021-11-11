-- คำสั่งในการลบฐานข้อมูล
-- DROP DATABASE stock

-- การสร้างฐานข้อมูลใหม่ กำหนด paht และขนาดไฟล์ต่างๆ
CREATE DATABASE stock
ON PRIMARY
(
	NAME = StockData,
	FILENAME = 'H:\SQL2019Data\StockData.MDF',
	SIZE = 5MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 10%
)
LOG ON
(
	NAME = StockLog,
	FILENAME = 'H:\SQL2019Data\StockLog.LDF',
	SIZE = 3MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 50MB
)
COLLATE Thai_CI_AI
GO
-- คำสั่งแสดงรายชื่อฐานข้อมูลทั้งหมด
EXEC sp_helpdb