USE Orders

-- ทดสอบสร้างตาราง TEST_INSERT
CREATE TABLE TEST_INSERT
(
	NULL_ABLE VARCHAR(30) NULL,
	DEFAULT_ABLE VARCHAR(30) DEFAULT 'SQL Server'
)

-- ทดสอบ INSERT
INSERT INTO TEST_INSERT
VALUES('Wichai', DEFAULT)

-- ทดสอบเรียกดูข้อมูลในตาราง TEST_INSERT
SELECT * FROM TEST_INSERT

GO
