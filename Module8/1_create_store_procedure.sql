USE Orders
GO

-- ������ҧ Store Procedure
CREATE PROCEDURE Get_Products_By_Category
	@CategoryID int
AS
BEGIN
	SELECT * FROM TblProducts /* �Ф���բ����Ũҡ���ҧ TblProducts */
	WHERE CategoryID=@CategoryID /* �����Դ�Թ��� ��������繾��������� */
	RETURN
END

-- ���ͺ���¡��ҹ Get_Products_By_Category
EXEC Get_Products_By_Category 3
