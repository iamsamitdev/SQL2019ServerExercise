-- �����㹡��ź�ҹ������
-- DROP DATABASE stock

-- ������ҧ�ҹ���������� ��˹� paht ��Т�Ҵ����ҧ�
CREATE DATABASE stock
ON PRIMARY
(
	NAME = StockData,
	FILENAME = 'H:\SQL2019Data\StockData.MDF',
	SIZE = 5MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 10%
)
LOG ON
(
	NAME = StockLog,
	FILENAME = 'H:\SQL2019Data\StockLog.LDF',
	SIZE = 3MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 50MB
)
COLLATE Thai_CI_AI
GO
-- ������ʴ���ª��Ͱҹ�����ŷ�����
EXEC sp_helpdb