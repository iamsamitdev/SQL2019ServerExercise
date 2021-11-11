USE Orders

-- �ͧ���¡�٢�����㹵��ҧ TblProducts
SELECT * FROM TblProducts
ORDER BY ProductID
GO

-- ��������� LEFT JOIN
SELECT TblProducts.*, TblOrderDetails.ProductCount
FROM TblProducts LEFT OUTER JOIN TblOrderDetails
ON TblProducts.ProductID = TblOrderDetails.ProductID
WHERE TblOrderDetails.ProductCount IS NOT NULL
ORDER BY TblProducts.ProductID

GO