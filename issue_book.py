from db_connection import connection

cursor = connection.cursor()
cursor.execute("USE library")

def issue_book(cursor, connection, book_isbn, borrower_id, due_date):
    try:
        cursor.execute("CALL IssueBook(?, ?, ?)", (book_isbn, borrower_id, due_date))
        connection.commit() # Commit changes
        print("Book issued successfully!")
    except Exception as e:
        print(f"Error issuing book: {e}")

if __name__ == "__main__":
    # Test the issue_book function
    issue_book(cursor, connection,"978-1000000000", 1, "2024-12-15")

    # Close cursor and connection
    cursor.close()
    connection.close()
