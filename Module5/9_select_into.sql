USE Orders

IF OBJECT_ID('New_Table') IS NOT NULL /* ������ժ��� table New_Table ������� */
DROP TABLE New_Table /* ���ź New_Table �͡ */

-- Select ������ҧ Table ����
SELECT OrderID, SUM(ProductCount) AS 'Sum of ProductCount'
INTO New_Table /* ���ҧ���ҧ������� New_Table */
FROM TblOrderDetails
GROUP BY OrderID
GO

-- ���ͺ���¡�٢����Ũҡ Table New_Table
SELECT * FROM New_Table
GO