DO $$
DECLARE
    tbl_name TEXT;
    col_name TEXT;
    col_type TEXT;
BEGIN
    FOR tbl_name IN 
        SELECT table_name
        FROM information_schema.tables
        WHERE table_name IN ('sec_cumulative_equities_old', 'sec_cumulative_equities_new')
    LOOP
        RAISE NOTICE 'Processing table: %', tbl_name;
        FOR col_name, col_type IN 
            SELECT column_name, data_type
            FROM information_schema.columns
            WHERE table_name = tbl_name
        LOOP
            RAISE NOTICE 'Processing column: % with type: %', col_name, col_type;
            IF col_type LIKE 'character varying%' THEN
                EXECUTE 'ALTER TABLE ' || tbl_name || ' ALTER COLUMN ' || col_name || ' TYPE character varying;';
                RAISE NOTICE 'Column % in table % altered to character varying', col_name, tbl_name;
            ELSE
                EXECUTE 'ALTER TABLE ' || tbl_name || ' ALTER COLUMN ' || col_name || ' TYPE character varying;';
                RAISE NOTICE 'Column % in table % altered to character varying', col_name, tbl_name;
            END IF;
        END LOOP;
    END LOOP;
END $$;
