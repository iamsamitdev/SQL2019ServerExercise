USE Orders

-- ����� IF...ELSE ��Ǩ�ͺ���͹� ����բ�����㹵��ҧ�������
IF EXISTS (SELECT * FROM TblProducts)
	PRINT '���ҧ����բ���������'
ELSE
	PRINT '��辺������㹵��ҧ���'

GO

-- ����� CASE ��Ǩ�ͺ���͹�������͡�ʴ��ŵ���ʷ�辺
SELECT ProductName, UnitPrice, 
	'Classification' = CASE 
		WHEN UnitPrice < 200 THEN 'Low Price'
		WHEN UnitPrice BETWEEN 200 AND 500 THEN 'Medium Price'
		WHEN UnitPrice > 500 THEN 'Expensive Price'
		ELSE 'Unknow'
	END
FROM TblProducts