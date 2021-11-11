USE Orders

SELECT * 
FROM TblCategories
--WHERE CategoryPicture IS NULL
WHERE CategoryPicture IS NOT NULL
GO