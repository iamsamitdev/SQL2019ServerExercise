USE Orders
GO

-- การสร้างตัวแปรใน SQL
DECLARE @BookID smallint
SET @BookID = 1

-- การ SELECT ข้อมูลโดยใช้ตัวแปรในเงื่อนไข
SELECT * FROM TblCategories WHERE CategoryID = @BookID
GO

DECLARE @name varchar(30)
SELECT @name = CustomerName FROM TblCustomers
PRINT @name
GO