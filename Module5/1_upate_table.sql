USE Orders

-- ����Ѿഷ������㹵��ҧ TblProducts
UPDATE TblProducts
SET VATFlag = 0
FROM TblProducts TP INNER JOIN TblOrderDetails TOD
ON TP.ProductID = TOD.ProductID

GO

-- ���ͺ���¡�٢�����㹵��ҧ���١�Ѿഷ
SELECT * FROM TblProducts
ORDER BY ProductID DESC

GO