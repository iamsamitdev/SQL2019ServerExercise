Use Orders
GO

-- การสร้าง Store Procedure
CREATE PROCEDURE Get_AvgPrice
	@CategoryID int=NULL, @Avg_Price int OUTPUT
AS
BEGIN
	IF @CategoryID IS NULL
		BEGIN
			PRINT 'ERROR: You must specify a CategoryID value.'
			RETURN(1)
		END
	ELSE
		BEGIN
			IF(SELECT COUNT(*) FROM TblProducts WHERE CategoryID=@CategoryID)=0
			RETURN(2)
		END
	SELECT @Avg_Price=Avg(UnitPrice) FROM TblProducts WHERE CategoryID=@CategoryID
	RETURN(0)
END

GO

-- เรียกใช้งาน Store Procedure Get_AvgPrice
DECLARE @return_value int, @avg_price money
--EXEC @return_value =  Get_AvgPrice @Avg_Price=@avg_price
--EXEC @return_value =  Get_AvgPrice 100, @Avg_Price=@avg_price
EXEC @return_value =  Get_AvgPrice 2, @Avg_Price=@avg_price
PRINT CAST(@return_value AS varchar)