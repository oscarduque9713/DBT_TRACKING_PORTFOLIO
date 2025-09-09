
{{
    config(
        materialized='table',
        database='TRACKING_PORTAFOLIO',
        schema='STG_SOURCE'
    )
}}



SELECT
$1::VARCHAR as CURRENCY,
$2::VARCHAR as CURRENCY_DESCRIPTION,
REPLACE($3::VARCHAR, '=', '0')::FLOAT as EURO,
$4::FLOAT as EURO_TO_LC,
$5::FLOAT as USD
FROM @TRACKING_PORTAFOLIO.STG_SOURCE.STG_RAW/Catalog_currency_processed.csv/tmps2wu6rhk.csv
(FILE_FORMAT => TRACKING_PORTAFOLIO.STG_SOURCE.EXCEL_FORMAT)