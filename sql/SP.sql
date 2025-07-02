CREATE OR REPLACE PROCEDURE return_sample_data()
RETURNS INTEGER  
LANGUAGE SQL
AS
'
SELECT 1
;'

-- Example usage:
-- CALL return_sample_data();
-- This will return a table with sample data containing:
-- 1. An ID column (integer)
-- 2. A Name column (string)
-- 3. A Created timestamp
-- This will return a table with two null values in each row