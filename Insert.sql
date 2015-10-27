--Author Data
INSERT INTO Author (ID, Name)
	VALUES
		("1", "Soren Lauesen"),
		("2", "Robert Lafore");

--Book Data	
INSERT INTO Book (ISBN, Title, Edition, YearIssued)
	VALUES (0672324539, "Data Structures and Algorithms in Java", "2", 2002);
	
--Copy Data
INSERT INTO Copy (barCode, Book_ID)
	VALUES ("1234567", "0672324539");
	
--Authorship Data
INSERT INTO Authorship (Main, Book_ID, Author_ID)
	VALUES (true, "0672324539", "2");

--Member Data
INSERT INTO Member (Name, Gender, email)
	VALUES ("Adam Smith", 1, "smith@library.us");
	
--Loan Data
INSERT INTO Loan (copyID, memberID, borrowDate, returnDate, status)
	VALUES ("1234567", 1, STR_TO_DATE('06-01-2010', '%m-%d-%Y'), STR_TO_DATE('06-10-2010', '%m-%d-%Y'), 2);