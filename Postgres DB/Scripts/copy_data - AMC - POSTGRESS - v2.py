import os
import pandas as pd
from sqlalchemy import create_engine

# Configuration variables
db_url = 'postgresql://postgres:s3cUr3PW@localhost:5432/amc_data'
reference_file_path = 'F:/AMC/Postgres/Scripts/AMC_reference_file_POSTGRES.txt'
base_folder = 'F:/AMC/Equities'
unique_id_column = 'Underlier ID-Leg 1'
unique_id_value = "US00165C3025"

# Function to convert CSV column names to PostgreSQL column names
def convert_column_name(column_name):
    return column_name.lower().replace(' ', '_').replace('-', '_').replace('/', '_')

# Explicit mapping for special cases
column_mapping = {
    'Strike price currency/currency pair': 'strike_price_currency_or_currency_pair'
}

# Function to load and normalize the CSV data
def load_and_normalize_csv(csv_file_path):
    # Load the CSV file
    df = pd.read_csv(csv_file_path)
    
    # Normalize column names
    df.columns = [column_mapping.get(col, convert_column_name(col)) for col in df.columns]
    
    # Check if the unique_id_column exists in the dataframe
    normalized_unique_id_column = convert_column_name(unique_id_column)
    if normalized_unique_id_column in df.columns:
        # Filter rows where unique_id_column contains the unique_id_value
        df = df[df[normalized_unique_id_column].str.contains(unique_id_value, na=False)]
    else:
        print(f"Column {unique_id_column} not found in file: {csv_file_path}")
    
    return df

# Function to insert data into PostgreSQL table
def insert_data_into_table(df, table_name):
    # Connect to PostgreSQL database using SQLAlchemy
    engine = create_engine(db_url)
    
    # Insert data into PostgreSQL table
    df.to_sql(table_name, engine, if_exists='append', index=False)
    
    # Close the connection
    engine.dispose()

# Debug function to check compatibility and generate report
def check_compatibility_and_generate_report(csv_file_path, table_name):
    # Load the CSV file
    df = load_and_normalize_csv(csv_file_path)
    
    # Connect to PostgreSQL database using SQLAlchemy
    engine = create_engine(db_url)
    conn = engine.connect()

    # Get the table schema from PostgreSQL
    query = f"""
    SELECT column_name, data_type 
    FROM information_schema.columns 
    WHERE table_name = '{table_name}';
    """
    table_schema = pd.read_sql(query, conn)

    if table_schema.empty:
        print(f"No columns found for table '{table_name}'. Please check the table name and database connection.")
        conn.close()
        return

    # Prepare ALTER TABLE commands if any column types do not match
    alter_commands = []
    for csv_col in df.columns:
        pg_col = column_mapping.get(csv_col, convert_column_name(csv_col))
        pg_dtype_row = table_schema[table_schema['column_name'] == pg_col]

        if not pg_dtype_row.empty:
            pg_dtype = pg_dtype_row['data_type'].values[0]
            if pg_dtype != 'character varying':
                alter_commands.append(f"ALTER TABLE {table_name} ALTER COLUMN {pg_col} TYPE character varying;")
        else:
            print(f"Column {pg_col} not found in PostgreSQL table {table_name}.")
    
    # Output ALTER TABLE commands if any
    if alter_commands:
        print(f"\nPlease execute the following ALTER TABLE commands to update the PostgreSQL table schema for table {table_name}:")
        for command in alter_commands:
            print(command)
    else:
        print(f"\nAll data types match for table {table_name}.")
    
    # Clean up
    conn.close()

# Function to read reference file
def read_reference_file():
    if os.path.exists(reference_file_path):
        with open(reference_file_path, 'r') as file:
            processed_files = file.read().splitlines()
    else:
        processed_files = []
    return processed_files

# Function to update reference file
def update_reference_file(file_path):
    with open(reference_file_path, 'a') as file:
        file.write(file_path + '\n')

# Main process
def main():
    # Read reference file to get already processed files
    processed_files = read_reference_file()
    
    # Get all folders inside the base folder
    for folder_name in os.listdir(base_folder):
        folder_path = os.path.join(base_folder, folder_name)
        
        if os.path.isdir(folder_path):
            for file_name in os.listdir(folder_path):
                file_path = os.path.join(folder_path, file_name)
                
                # Skip if the file has already been processed
                if file_path in processed_files:
                    print(f"Skipping already processed file: {file_path}")
                    continue
                
                # Load the CSV file and check the number of columns
                df = load_and_normalize_csv(file_path)
                num_columns = len(df.columns)
                
                # Determine the table name based on the number of columns
                if num_columns == 110:
                    table_name = 'sec_cumulative_equities_new'
                elif num_columns == 112:
                    table_name = 'sec_cumulative_equities_old'
                else:
                    print(f"Unexpected number of columns ({num_columns}) in file: {file_path}")
                    continue
                
                print(f"\nProcessing CSV file: {file_path} for table: {table_name}")
                
                # Check compatibility and generate report
                check_compatibility_and_generate_report(file_path, table_name)
                
                # Insert data into the table
                insert_data_into_table(df, table_name)
                print(f"Data from {file_path} inserted into {table_name} successfully.")
                
                # Update reference file
                update_reference_file(file_path)

if __name__ == "__main__":
    main()
