
📂 Stage: STG_SOURCE

This schema represents the bronze later in the data model.
Here, tables are stored in their original format, without transformations, exactly as they are loaded from snowflake stage.

This enables:

Preserving traceability of the source data.

Performing QA and data accuracy checks before applying further transformations.

📥 Data loading

Iniitally, files were loaded manually into snwoflake stage.
At this point, two file formats are supported:

- **JSON**

- **CSV**

🔍 Verifying files in stage

To validate that the files are available in the stage, use the following query:

LIST @TRACKING_PORTAFOLIO.STG_SOURCE.STG_RAW;

📝 Creating File Formats

File formats are created in snowflake to correctly handlt different type files.

📑 CSV Format

CREATE OR REPLACE FILE FORMAT TRACKING_PORTAFOLIO.STG_SOURCE.CSV_FORMAT_COMA
    TYPE = 'CSV'
    FIELD_DELIMITER = ','
    SKIP_HEADER = 1
    NULL_IF = ('NULL', 'null')
    EMPTY_FIELD_AS_NULL = TRUE;

📑 JSON Format

CREATE OR REPLACE FILE FORMAT TRACKING_PORTAFOLIO.STG_SOURCE.JSON_FORMAT
    TYPE = 'JSON'
    STRIP_OUTER_ARRAY = TRUE;


🚀 Loading Process with COPY INTO

Once file formats are created, data can be loaded from stage using COPY INTO.

For fact table, JSON_FORMAT is used, in the other way, CSV_FORMAT_COMA is used by dimension table.

SELECT ...
FROM @stg_raw/tables.csv (FILE_FORMAT => CSV_FORMAT_COMA);

The next step is the silver layer [Silver](../refined/README.md)