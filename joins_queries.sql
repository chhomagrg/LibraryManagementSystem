USE library;

-- Display all books with their authors
SELECT books.title, authors.first_name AS author_first_name, authors.last_name AS author_last_name
FROM books 
JOIN authors ON books.author_id = authors.author_id;

-- Count the number of books in each categories
SELECT categories.name AS category_name, COUNT(books.book_id) AS book_count
FROM categories 
LEFT JOIN books ON categories.category_id = books.category_id
GROUP BY categories.name;

-- Display the top 5 most borrowed books
SELECT books.title AS book_title, COUNT(loans.loan_id) AS borrow_countReturnBook
FROM books
JOIN loans ON books.loan_id = loans.loan_id
GROUP BY books.title
ORDER BY borrow_count DESC
LIMIT 5;

-- Check if any books have same ISBNs
SELECT isbn, COUNT(*) AS duplicate_count
FROM books
GROUP BY isbn
HAVING COUNT(*) > 1;

-- Check what books are available
SELECT books.title, categories.name AS category, books.isbn
FROM books 
INNER JOIN categories ON books.category_id = categories.category_id
WHERE books.status = 'available';

-- Check which books are overdue
SELECT books.title AS book_title, CONCAT(borrowers.first_name, ' ',
	   borrowers.last_name) AS borrower_name, loans.due_date
FROM books
JOIN loans ON books.loan_id = loans.loan_id
JOIN borrowers ON loans.borrower_id = borrowers.borrower_id
WHERE loans.due_date < CURDATE();

-- Count the number of books borrowed by each borrower
SELECT borrowers.first_name, borrowers.last_name, COUNT(loans.loan_id) AS books_borrowed
FROM borrowers
INNER JOIN loans ON borrowers.borrower_id = loans.borrower_id
GROUP BY borrowers.borrower_id, borrowers.first_name, borrowers.last_name;
