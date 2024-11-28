from db_connection import connection

cursor = connection.cursor()
cursor.execute("USE library")

def return_book(cursor, connection, book_isbn):
    try:
        cursor.execute("CALL ReturnBook(?)", (book_isbn,))
        connection.commit()
        print("Book returned successfully!")
    except Exception as e:
        print(f"Error returning book: {e}")


if __name__ == "__main__":
    # Test the return book function
    return_book(cursor, connection, "978-1000000000")

    # Close cursor and connection
    cursor.close()
    connection.close()
