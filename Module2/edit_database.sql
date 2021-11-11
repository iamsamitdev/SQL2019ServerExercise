-- การแก้ไขฐานข้อมูล
ALTER DATABASE stock
ADD FILE
(
	NAME = NewStockData,
	FILENAME = 'H:\SQL2019Data\NewStockData.MDF',
	SIZE = 10MB,
	MAXSIZE = 20MB,
	FILEGROWTH = 10MB
)
GO

-- การเปลี่ยนชื่อไฟล์ฐานข้อมูล
ALTER DATABASE stock
MODIFY FILE
(
	NAME = NewStockData,
	FILENAME = 'H:\SQL2019Data\NewStockData2.MDF'
)
GO

-- การลบไฟล์ฐานข้อมูล
ALTER DATABASE stock
REMOVE FILE NewStockData
GO

USE stock
EXEC sp_helpfile
