# 📊 Tracking Portfolio dbt + Snowflake

Bienvenido al proyecto de data engineering y analytics que permite administrar, transformar y analizar operaciones de trading en un entorno moderno de datos.

Este repositorio está diseñado para aprovechar dbt como framework de transformación y Snowflake como data warehouse escalable y seguro, siguiendo la arquitectura Medallion (Bronze, Silver, Gold).

## Que hace esta proyecto?

- Carga de datos de operaciones integrando información desde archivos en formato JSON y CSV.

- Modelado con dbt, transformando datos crudos en modelos analíticos listos para usar:

Bronze (Staging): Se realiza un truncate and insert (borrar e insertar) en las tablas para mantener una copia exacta de los datos crudos con trazabilidad completa.

Silver (Refined): Los datos se transforman y limpian en vistas materializadas para garantizar rendimiento y disponibilidad de datos validados y estandarizados.

Gold (Mart/DMT): Se aplica de nuevo la estrategia de truncate and insert para garantizar la idempotencia y el recálculo completo de los modelos finales para reportes e insights.

- Integración con Snowflake: permite escalar el procesamiento y analizar millones de registros de forma rápida y confiable.


## Ejemplo de Resultados 📷

- Vista en dbt docs (lineage de modelos y dependencias).

![Inicio-Móvil](images/lineash.png)

- Arquitectura

![architectura](images/architecture.png)


## 🎯 Características principales

- Modelado modular con dbt: staging, refined y mart.

- Optimización en Snowflake: uso de clustering y vistas materializadas.

- Auditoría y calidad de datos: tests de dbt para validar integridad.

- Versionado y CI/CD: integración con GitHub Actions para despliegue automático.

- Escalabilidad: diseñado para crecer desde cientos hasta millones de operaciones.


## 🛠 Tecnologías Utilizadas

- **dbt Core**
- **Snowflake**
- **SQL**


## 🛠 Configuraciones iniciales

Para establecer una conexión estable entre Snowflake y dbt, se realizaron las siguientes configuraciones:

1. Creación de la base de datos en la cuenta default de Snowflake.

2. Creación de un nuevo role y asignación a un usuario específico.

3. Creación de schemas y stage (Snowflake stage).

4. Asignación de privilegios necesarios al usuario sobre la base de datos, schemas y stage.

Detalles en [Pre-Configuration Snowflake](Pre_configuration_Snowflake.md)


### 🧠 Inspiración

Este proyecto nace como una solución del Bootcamp Data Engineer de Z2H Academy, con la idea de:

- Estandarizar el flujo de datos de operaciones.

- Dar trazabilidad a cada trade.

- Crear una arquitectura moderna, que se pueda escalar facilmente.


## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.


