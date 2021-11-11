USE Orders
GO

-- การสร้างฟังก์ชันใหม่
CREATE FUNCTION PriceIncludingTAX(@Price money, @VATFlag bit)
RETURNS money
AS BEGIN
	DECLARE @p money
	if @VATFlag=1
		SET @p = @Price+(@Price*0.07)
	ELSE
		SET @p = @Price
	RETURN @p
END

GO

-- เรียกใช้งานฟังก์ชัน
SELECT ProductName, UnitPrice, VATFlag, dbo.PriceIncludingTAX(UnitPrice, VATFlag) AS TotalPrice
FROM TblProducts
WHERE VATFlag = 1
GO
