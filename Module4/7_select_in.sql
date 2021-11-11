USE Orders

SELECT CategoryID, ProductName
FROM TblProducts
WHERE CategoryID IN (1,2,3)
GO
