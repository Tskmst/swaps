import pandas as pd
from sqlalchemy import create_engine

# Database connection URL
db_url = 'postgresql://postgres:s3cUr3PW@localhost:5432/amc_data'

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

    # Check compatibility and prepare the report with detailed reasons
    report = []
    alter_commands = []
    for csv_col in df.columns:
        pg_col = column_mapping.get(csv_col, convert_column_name(csv_col))
        csv_dtype = str(df[csv_col].dtype)
        pg_dtype_row = table_schema[table_schema['column_name'] == pg_col]

        if not pg_dtype_row.empty:
            pg_dtype = pg_dtype_row['data_type'].values[0]
            if pg_dtype != 'character varying':
                alter_commands.append(f"ALTER TABLE {table_name} ALTER COLUMN {pg_col} TYPE character varying;")
            can_insert = 'Yes' if pg_dtype == 'character varying' else 'No'
            reason = '' if can_insert == 'Yes' else 'Data type mismatch'
        else:
            can_insert = 'No'
            pg_dtype = 'N/A'
            reason = 'Column not found in PostgreSQL table'

        report.append({
            'CSV Column': csv_col,
            'CSV Data Type': csv_dtype,
            'PostgreSQL Column': pg_col,
            'PostgreSQL Data Type': pg_dtype,
            'Can Insert?': can_insert,
            'Reason': reason
        })

    report_df = pd.DataFrame(report)
    
    # Display the report
    print(report_df.to_string(index=False))

    # Output ALTER TABLE commands if any
    if alter_commands:
        print(f"\nPlease execute the following ALTER TABLE commands to update the PostgreSQL table schema for table {table_name}:")
        for command in alter_commands:
            print(command)
    else:
        print(f"\nNo ALTER TABLE commands needed for table {table_name}. All data types match.")

    # Clean up
    conn.close()

# File paths and table names
csv_files_and_tables = [
    ('F:/AMC/Equities/2024-01/SEC_CUMULATIVE_EQUITIES_2024_01_07.csv', 'sec_cumulative_equities_old'),
    ('F:/AMC/Equities/2024-02/SEC_CUMULATIVE_EQUITIES_2024_02_18.csv', 'sec_cumulative_equities_new')
]

# Process each CSV file, check compatibility, and insert data into the corresponding table
for csv_file_path, table_name in csv_files_and_tables:
    print(f"\nProcessing CSV file: {csv_file_path} for table: {table_name}")
    
    # Check compatibility and generate report
    check_compatibility_and_generate_report(csv_file_path, table_name)
    
    # Load and normalize CSV data
    df = load_and_normalize_csv(csv_file_path)
    
    # Insert data into the table
    insert_data_into_table(df, table_name)
    print(f"Data from {csv_file_path} inserted into {table_name} successfully.")
