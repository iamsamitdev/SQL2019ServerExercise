USE Orders

-- ���ͺ���ҧ���ҧ TEST_INSERT
CREATE TABLE TEST_INSERT
(
	NULL_ABLE VARCHAR(30) NULL,
	DEFAULT_ABLE VARCHAR(30) DEFAULT 'SQL Server'
)

-- ���ͺ INSERT
INSERT INTO TEST_INSERT
VALUES('Wichai', DEFAULT)

-- ���ͺ���¡�٢�����㹵��ҧ TEST_INSERT
SELECT * FROM TEST_INSERT

GO
