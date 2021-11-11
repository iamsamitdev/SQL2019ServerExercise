USE Orders

SELECT * 
FROM TblProducts INNER JOIN TblOrderDetails
ON TblProducts.ProductID = TblOrderDetails.ProductID
ORDER BY TblProducts.ProductID

GO

SELECT DISTINCT TOP 10 TblProducts.*, TblOrderDetails.ProductCount
FROM TblProducts INNER JOIN TblOrderDetails
ON TblProducts.ProductID = TblOrderDetails.ProductID
ORDER BY TblProducts.ProductID

GO