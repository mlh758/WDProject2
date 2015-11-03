--3.3 Returns the copy ID and book title of books that have been borrowed between 2010 and 2012
SELECT DISTINCT copyID, Title
FROM copy
INNER JOIN loan
ON copy.`barCode` = loan.`copyID`
INNER JOIN book
ON copy.`Book_ID` = book.`ISBN`
WHERE year(borrowDate) <= 2012 && year(borrowDate) >= 2010

--3.4 Returns the member ID, member name, copy ID, and book title of books that have not been returned
SELECT memberID, Name, copyID, Title
FROM loan
INNER JOIN member
ON loan.`memberID` = member.`ID`
INNER JOIN copy
ON copy.`barCode` = loan.`copyID`
INNER JOIN book
ON copy.`Book_ID` = book.`ISBN`
WHERE returnDate IS NULL && status = 1

SELECT Title, COUNT(*)
FROM copy
INNER JOIN book
ON copy.`Book_ID` = book.`ISBN`
GROUP BY Book_ID
ORDER BY COUNT(*) DESC, Title DESC