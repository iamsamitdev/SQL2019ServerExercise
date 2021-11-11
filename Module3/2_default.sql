USE stock
GO

-- สร้าง Defaults
CREATE DEFAULT DefaultPrice1 AS 1
GO

-- การเชื่อม Defaults เข้ากับ Field ในตารางที่ต้องการ
EXEC sp_bindefault 'DefaultPrice1', 'products.UnitPrice'
GO

-- เรียกดูรายละเอียดของ Defaults
EXEC sp_help products
GO

EXEC sp_helptext DefaultPrice
GO

-- การถอด Defaults ออกจากตาราง
EXEC sp_unbindefault 'products.UnitPrice', 'DefaultPrice1'

-- ลบ Defaults
DROP DEFAULT DefaultPrice1
GO