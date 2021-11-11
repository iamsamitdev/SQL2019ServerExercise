USE Orders

-- การใช้คำสั่ง SELF JOIN
SELECT DISTINCT TblCustomers.CustomerName, OtherCus.CustomerName, TblCustomers.Zipcode
FROM	TblCustomers INNER JOIN TblCustomers OtherCus 
ON	TblCustomers.Zipcode = OtherCus.Zipcode AND
	TblCustomers.CustomerName NOT LIKE OtherCus.CustomerName
GO