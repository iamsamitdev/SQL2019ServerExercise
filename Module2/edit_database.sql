-- �����䢰ҹ������
ALTER DATABASE stock
ADD FILE
(
	NAME = NewStockData,
	FILENAME = 'H:\SQL2019Data\NewStockData.MDF',
	SIZE = 10MB,
	MAXSIZE = 20MB,
	FILEGROWTH = 10MB
)
GO

-- �������¹�������ҹ������
ALTER DATABASE stock
MODIFY FILE
(
	NAME = NewStockData,
	FILENAME = 'H:\SQL2019Data\NewStockData2.MDF'
)
GO

-- ���ź���ҹ������
ALTER DATABASE stock
REMOVE FILE NewStockData
GO

USE stock
EXEC sp_helpfile
