USE stock
GO

-- ���ҧ���ҧ����
CREATE TABLE categories
(
	CategoryID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	CategoryName nvarchar(5) NOT NULL,
	CategoryDescription ntext NULL,
	CategoryPicture image NULL
) ON [PRIMARY]

-- ź���ҧ㹰ҹ������
DROP TABLE categories
