{{
    config(
        materialized='table',
        database='TRACKING_PORTAFOLIO',
        schema='STG_SOURCE'
    )
}}

WITH raw_data AS (
    SELECT 
        $1::VARCHAR as ACCOUNTID,
        $2::VARCHAR as SYMBOL,
        $3::VARCHAR as DESCRIPTION,
        $4::VARCHAR as EXCHANGE,
        TO_DATE($5::VARCHAR, 'DD/MM/YYYY') as REPORT_DATE,
        CASE 
            WHEN $6 LIKE '%.%.%' THEN REPLACE(REPLACE($6, '.', ''), ',', '.')::FLOAT
            WHEN $6 LIKE '%,%' THEN REPLACE($6, ',', '.')::FLOAT
            ELSE $6::FLOAT
        END as QUANTITY,
        CASE 
            WHEN $7 LIKE '%.%.%' THEN REPLACE(REPLACE($7, '.', ''), ',', '.')::FLOAT
            WHEN $7 LIKE '%,%' THEN REPLACE($7, ',', '.')::FLOAT
            ELSE $7::FLOAT
        END as COST_BASE,
        CASE 
            WHEN $8 LIKE '%.%.%' THEN REPLACE(REPLACE($8, '.', ''), ',', '.')::FLOAT
            WHEN $8 LIKE '%,%' THEN REPLACE($8, ',', '.')::FLOAT
            ELSE $8::FLOAT
        END as POSITION_VALUE,
        $9::VARCHAR as CURRENCY
    FROM @TRACKING_PORTAFOLIO.STG_SOURCE.STG_RAW/tables.csv
    (FILE_FORMAT => TRACKING_PORTAFOLIO.STG_SOURCE.CSV_FORMAT)
)

SELECT 
    ACCOUNTID,
    SYMBOL,
    DESCRIPTION,
    EXCHANGE,
    REPORT_DATE,
    ROUND(QUANTITY, 2) as QUANTITY,
    ROUND(COST_BASE, 2) as COST_BASE,
    ROUND(POSITION_VALUE, 2) as POSITION_VALUE,
    CURRENCY
FROM raw_data