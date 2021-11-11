USE stock
GO

-- สร้างตารางใหม่
CREATE TABLE categories
(
	CategoryID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	CategoryName nvarchar(5) NOT NULL,
	CategoryDescription ntext NULL,
	CategoryPicture image NULL
) ON [PRIMARY]

-- ลบตารางในฐานข้อมูล
DROP TABLE categories
