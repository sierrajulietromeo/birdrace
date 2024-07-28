import sqlite3

def default_query(query):
    try:
        with sqlite3.connect("birdrace.db") as conn:
            cursor = conn.cursor()
            results = cursor.execute(query).fetchall()
            return results
    except sqlite3.Error as e:
        print(f"Error executing query: {e}")
        raise  # Re-raise the exception for handling in the calling code
