from db_connection import connection

cursor = connection.cursor()
cursor.execute("USE library")

query = """
SELECT 
    books.title, CONCAT(authors.first_name, ' ', authors.last_name) AS author_name,
    categories.name AS category_name, books.status
FROM books
JOIN authors ON books.author_id = authors.author_id
JOIN categories ON books.category_id = categories.category_id;
"""
cursor.execute(query)

results = cursor.fetchall()

print("+--------------------------------------------------------------------------------------+")
print(f"|{' Book Title':<30}| {'Author':<25}|{' Genre':<15} |{'Status':<10} |")
print("+--------------------------------------------------------------------------------------+")

for row in results:
    print(f"|{row.title:<30}| {row.author_name:<25}| {row.category_name:<15}| {row.status:<10}|")

print("+--------------------------------------------------------------------------------------+")

cursor.close()
connection.close()
