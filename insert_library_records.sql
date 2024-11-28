-- Insert records into authors table
INSERT INTO authors (author_id, first_name, last_name)
VALUES
(1, 'Walter', 'Issacson'),
(2, 'Mahatma', 'Gandhi'),
(3, 'Ellen', 'Lupton'),
(4, 'Dan', 'Brown'),
(5, 'Al', 'Sweigart'),
(6, 'APJ', 'Abdul Kalam'),
(7, 'Stephen', 'Hawking'),
(8, 'William', 'Golding'),
(9, 'Daphne', ''),
(10, 'Robert', 'Louis');

-- Insert records into categories table
INSERT INTO categories (category_id, name)
VALUES
(1, 'Biography'),
(2, 'Autobiography'),
(3, 'Arts'),
(4, 'Fiction'),
(5, 'Education'),
(6, 'Space'),
(7, 'Philosophy');

-- Insert records into publishers table
INSERT INTO publishers (publisher_id, name)
VALUES
(1, 'Publisher A'),
(2, 'Publisher C'),
(3, 'Publisher E'),
(4, 'Publisher L'),
(5, 'Publisher O'),
(6, 'Publisher P'),
(7, 'Publisher U'),
(8, 'Publisher W'),
(9, 'Publisher Y'),
(10, 'Publisher Z');

-- Insert records into borrowers table
INSERT INTO borrowers (borrower_id, first_name, last_name)
VALUES
(1, 'Grace', 'Hopper'),
(2, 'Diana', 'Prince'),
(3, 'Charlie', 'Brown'),
(4, 'Ivy', 'Carter'),
(5, 'Bob', 'Smith'),
(6, 'Jack', 'Daniels');

-- Insert records into loans table
INSERT INTO loans (loan_id, isbn, borrower_id, borrowed_at, due_date)
VALUES
(1, '978-1000000000', 1, '2024-11-26', '2024-12-10'),
(2, '978-1000000002', 2, '2024-11-21', '2024-12-05'),
(3, '978-1000000004', 3, '2024-11-25', '2024-12-09'),
(4, '978-1000000020', 4, '2024-11-24', '2024-12-08'),
(5, '978-1000000022', 5, '2024-11-23', '2024-12-07'),
(6, '978-1000000024', 6, '2024-11-26', '2024-12-10');

-- Insert records into books table
INSERT INTO books (book_id, isbn, title, author_id, category_id, publisher_id, status, loan_id)
VALUES
(1, '978-1000000000', 'Steve Jobs', 1, 1, 1, 'issued', 1),
(2, '978-1000000002', 'My Experiments with Truth', 2, 2, 2, 'issued', 2),
(3, '978-1000000004', 'Thinking with Type', 3, 3, 3, 'issued', 3),
(4, '978-1000000011', 'Da Vinci Code', 4, 4, 4, 'available', NULL),
(5, '978-1000000014', 'Automate The Boring Stuff', 5, 5, 5, 'available', NULL),
(6, '978-1000000015', 'Wings Of Fire', 6, 2, 6, 'available', NULL),
(7, '978-1000000020', 'A Brief History of Time', 7, 6, 7, 'issued', 4),
(8, '978-1000000022', 'Lord Of The Flies', 8, 4, 8, 'issued', 5),
(9, '978-1000000024', 'Jamaica Inn', 9, 4, 9, 'issued', 6),
(10, '978-1000000025', 'Kidnapped', 10, 4, 10, 'available', NULL);



