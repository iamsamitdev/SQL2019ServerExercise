USE Orders

-- Sum
SELECT SUM (ProductCount) AS �ӹǹ��鹢ͧ�Թ��ҷ�����
FROM TblOrderDetails
WHERE OrderID = 10278
GO

-- Group By
SELECT OrderID, SUM (ProductCount) AS �ӹǹ�Թ���
FROM TblOrderDetails
GROUP BY OrderID
GO

-- Group By and Where
SELECT OrderID, SUM(ProductCount) AS "Sum Of Product"
FROM TblOrderDetails
--WHERE SUM(ProductCount) > 30
GROUP BY OrderID
GO


