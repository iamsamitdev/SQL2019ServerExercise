USE Orders

-- �ͧ���¡�٢�����㹵��ҧ TblProducts
SELECT * FROM TblOrderDetails
ORDER BY OrderID
GO

-- ��������� RIGHT JOIN
SELECT TblProducts.*, TblOrderDetails.ProductCount
FROM TblProducts RIGHT OUTER JOIN TblOrderDetails 
ON TblProducts.ProductID = TblOrderDetails.ProductID
ORDER BY TblProducts.ProductID

GO