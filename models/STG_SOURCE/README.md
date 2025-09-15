# 📊 Seguimiento de Operaciones de Trading con dbt + Snowflake

# Stage STG_SOURCE

El siguiente schema es donde se encuentran las tablas sin ninguna transformación, se cargan del stage a tablas en snowflake en su formato orginal, lo anterior se hace para tewner una trazabilidad dee la informacion, y realizar pruebas para garantizar la calidad y precision de los datos.

Inicialmente los datos se cargan manualmente al stage de snowflake ( para automatizar esta tarea, se puede hacer con IICS), uno tiene formato JSON y otro CSV.

Para verificar si los archivos quedaron cargados correctamente en el stage, se puede visualizar los archivos con el siguiente comando.

LIST @TRACKING_PORTAFOLIO.STG_SOURCE.STG_RAW ;

Posteriormente se crean los file format en snwoflake para cada uno.

- file format csv

CREATE OR REPLACE FILE TRACKING_PORTAFOLIO.STG_SOURCE.FORMAT CSV_FORMAT_COMA
    TYPE = 'CSV'
    FIELD_DELIMITER = ','
    SKIP_HEADER = 1
    NULL_IF = ('NULL', 'null')
    EMPTY_FIELD_AS_NULL = TRUE;

- File format Json

CREATE OR REPLACE FILE FORMAT TRACKING_PORTAFOLIO.STG_SOURCE.JSON_FORMAT
    TYPE = 'JSON'
    STRIP_OUTER_ARRAY = TRUE;


Finalmente se realiza el siguiente proceso,  Loading Data Using the COPY INTO or SELECT FROM @stage.

![copy-into](images/copy_into.png)