RESTORE DATABASE Orders
FROM DISK = 'C:\SQLData\Orders-Full Database Backup.bak'
WITH FILE = 1,
MOVE 'Orders' TO 'C:\SQLData\Orders.MDF',
MOVE 'Orders_log' TO 'C:\SQLData\Orders_log.ldf',
NOUNLOAD, REPLACE, STATS = 10
GO

