USE stock
GO

-- การสร้าง Rule
CREATE RULE ProductUnitInStock AS @UnitInStock >= 0 AND @UnitInStock <= 100
GO

-- การเชื่อม Rule กับ Field ในตาราง
EXEC sp_bindrule 'ProductUnitInStock','products.UnitInStock'
GO

-- ทดสอบทำงานกับ Rule
INSERT INTO products VALUES(NULL,'Magazine 2',20,NULL,1,200)
GO

-- การแสดงรายละเอียดของ Rules
EXEC sp_help products
EXEC sp_helptext ProductUnitInStock
GO

-- การถอด Rules ออก
EXEC sp_unbindrule 'products.UnitInStock', 'ProductUnitInStock'
GO

-- การเปลี่ยนชื่อ Rules
EXEC sp_rename ProductUnitInStock, PrdUnit
GO

-- ลบ Rules
DROP RULE PrdUnit
GO