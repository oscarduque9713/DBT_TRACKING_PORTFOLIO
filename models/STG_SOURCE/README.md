
📂 Stage: STG_SOURCE

El esquema STG_SOURCE corresponde a la capa Bronze dentro del modelo de datos.
Aquí se almacenan las tablas en su formato original, sin transformaciones, tal como se cargan desde el stage de Snowflake.

Este enfoque permite:

Mantener trazabilidad de la información desde la fuente.

Realizar pruebas de calidad y precisión de los datos antes de aplicar transformaciones posteriores.

📥 Carga de datos

Inicialmente, los archivos se cargan de manera manual al stage de Snowflake.
En este caso se manejan dos formatos:

JSON

CSV

⚡ En el futuro, esta carga puede ser automatizada mediante herramientas como Informatica IICS.

🔍 Verificación de archivos en el Stage

Para comprobar que los archivos fueron cargados correctamente en el stage, se puede usar el siguiente comando:

LIST @TRACKING_PORTAFOLIO.STG_SOURCE.STG_RAW;


📝 Creación de File Formats

Se definen file formats en Snowflake para manejar correctamente los distintos tipos de archivo.

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


🚀 Proceso de carga con COPY INTO

Una vez definidos los file formats, se procede a cargar los datos desde el stage utilizando COPY INTO o consultas directas con SELECT FROM @stage.

SELECT ...
FROM @stg_raw/tables.csv (FILE_FORMAT => CSV_FORMAT_COMA);