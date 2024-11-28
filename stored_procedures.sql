DROP PROCEDURE IF EXISTS IssueBook;
DROP PROCEDURE IF EXISTS ReturnBook;

-- Procedure to issue a book for loan
DELIMITER $$

CREATE PROCEDURE IssueBook (
    IN bookISBN VARCHAR(20),
    IN borrowerID INT,
    IN dueDate DATE
)
BEGIN
    -- Insert a new loan record
    INSERT INTO loans (isbn, borrower_id, borrowed_at, due_date)
    VALUES (bookISBN, borrowerID, CURDATE(), dueDate);

    -- Update the book status to 'issued' and link the loan
    UPDATE books
    SET status = 'issued',
        loan_id = LAST_INSERT_ID()
    WHERE isbn = bookISBN;
END$$

DELIMITER ;

-- Procedure to Return a Book
DELIMITER $$

CREATE PROCEDURE ReturnBook (
    IN bookISBN VARCHAR(20)
)
BEGIN
	UPDATE books
    SET loan_id = NULL, status = 'available'
    WHERE isbn = bookISBN;

    -- Delete the loan record from the loans table
    DELETE FROM loans
    WHERE isbn = bookISBN;
END$$
    

DELIMITER ;

    

DELIMITER ;
