CREATE OR REPLACE PROCEDURE return_sample_data()
RETURNS TABLE (id INT, name STRING, created_at TIMESTAMP)
LANGUAGE SQL
AS
$$
SELECT 1, 'John Doe', CURRENT_TIMESTAMP()
UNION ALL
SELECT 2, 'Jane Smith', CURRENT_TIMESTAMP()
UNION ALL
SELECT 3, 'Bob Johnson', CURRENT_TIMESTAMP()
$$;

-- Example usage:
-- CALL return_sample_data();
-- This will return a table with sample data containing:
-- 1. An ID column (integer)
-- 2. A Name column (string)
-- 3. A Created timestamp
-- This will return a table with two null values in each row