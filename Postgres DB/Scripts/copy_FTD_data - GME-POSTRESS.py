import os
import psycopg2
from psycopg2 import sql
from datetime import datetime
from urllib.parse import urlparse

# Define folder and file paths
source_folder = 'F:\\AMC\\FTD'
reference_file_path = 'F:\\AMC\\Postgres\\Scripts\\GME_FTD_reference_file_POSTGRES.txt'
table_name = 'ftd'

# Define database URL
db_url = 'postgresql://postgres:s3cUr3PW@localhost:5432/gme_data'

# Define the symbol to filter by
symbol = 'GME'

def load_processed_files(reference_file_path):
    try:
        with open(reference_file_path, 'r') as f:
            return set(f.read().splitlines())
    except FileNotFoundError:
        return set()

def save_processed_file(reference_file_path, filename):
    with open(reference_file_path, 'a') as f:
        f.write(filename + '\n')

def process_line(line):
    return line.strip().split('|')

def create_table_if_not_exists(table_name, columns, cursor):
    create_table_query = sql.SQL("CREATE TABLE IF NOT EXISTS {} (").format(sql.Identifier(table_name))
    create_table_query += sql.SQL(", ").join(sql.SQL("{} VARCHAR").format(sql.Identifier(col)) for col in columns)
    create_table_query += sql.SQL(");")
    cursor.execute(create_table_query)

def process_file(file_path, cursor, table_name, symbol):
    print(f"Processing file: {file_path}")
    with open(file_path, 'r') as input_file:
        header = input_file.readline().strip().split('|')
        if 'SETTLEMENT DATE' not in header or 'SYMBOL' not in header:
            print(f"Required columns not found in file: {file_path}")
            return

        create_table_if_not_exists(table_name, header, cursor)
        
        date_index = header.index('SETTLEMENT DATE')
        symbol_index = header.index('SYMBOL')

        match_count = 0
        for line in input_file:
            parts = process_line(line)
            if len(parts) > symbol_index and parts[symbol_index] == symbol:
                if len(parts) > date_index:
                    parts[date_index] = datetime.strptime(parts[date_index], '%Y%m%d').strftime('%Y-%m-%d')
                insert_query = sql.SQL("INSERT INTO {} ({}) VALUES ({})").format(
                    sql.Identifier(table_name),
                    sql.SQL(', ').join(map(sql.Identifier, header)),
                    sql.SQL(', ').join(sql.Placeholder() * len(parts))
                )
                cursor.execute(insert_query, parts)
                match_count += 1

        if match_count > 0:
            print(f"Found {match_count} matches in file: {file_path}")
        else:
            print(f"No matches found in file: {file_path}")

def copy_all_matching_rows_to_database(source_folder, reference_file_path, table_name, db_url, symbol):
    # Load processed files list
    processed_files = load_processed_files(reference_file_path)
    print(f"Loaded {len(processed_files)} processed files.")

    # Parse database URL
    result = urlparse(db_url)
    db_config = {
        'dbname': result.path[1:],
        'user': result.username,
        'password': result.password,
        'host': result.hostname,
        'port': result.port
    }

    # Connect to the PostgreSQL database
    conn = psycopg2.connect(**db_config)
    cursor = conn.cursor()

    # Process each file in the source folder
    for file_name in os.listdir(source_folder):
        file_path = os.path.join(source_folder, file_name)
        if os.path.isfile(file_path) and file_name not in processed_files:
            process_file(file_path, cursor, table_name, symbol)
            save_processed_file(reference_file_path, file_name)
            print(f"Marked file as processed: {file_name}")

    # Commit and close the database connection
    conn.commit()
    cursor.close()
    conn.close()
    print(f"Data copied to database table: {table_name}")

# Execute the script
copy_all_matching_rows_to_database(source_folder, reference_file_path, table_name, db_url, symbol)
