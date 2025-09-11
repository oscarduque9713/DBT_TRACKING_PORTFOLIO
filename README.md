# 📊 Seguimiento de Operaciones de Trading con dbt + Snowflake

Bienvenido al proyecto de data engineering y analytics que permite administrar, transformar y analizar operaciones de trading en un entorno moderno de datos.
Este repositorio está diseñado para aprovechar dbt como framework de transformación de datos y Snowflake como data warehouse escalable y seguro.

## Que hace esta proyecto?

- Carga de datos de operaciones: integra información de diferentes fuentes (plataformas de trading, archivos históricos, APIs de brokers).

- Modelado con dbt: transforma datos crudos en modelos analíticos listos para usar (staging, intermedios y modelos finales).

- Métricas clave de trading: genera tablas y vistas con indicadores como:

Volumen de operaciones.

Ganancias y pérdidas (PnL).

Retorno sobre inversión (ROI).

Exposición y riesgo por instrumento.

- Historización y consistencia: asegura persistencia en los datos de cada trade y control de versiones en modelos dbt.

- Integración con Snowflake: permite escalar el procesamiento y analizar millones de registros de forma rápida y confiable.



## Ejemplo de Resultados 📷

- Vista en dbt docs (lineage de modelos y dependencias).

![Inicio-Móvil](images/lineash.png)


- Reportes de métricas de trading en Snowflake dashboards / BI tools.

![Inicio-Desktop](css/capture-gastos.png)


## 🎯 Características principales

- Modelado modular con dbt: staging, mart y análisis de operaciones.

- Optimización en Snowflake: uso de clustering, vistas materializadas y warehouses elásticos.

- Auditoría y calidad de datos: tests de dbt para validar integridad, duplicados y reglas de negocio.

- Versionado y CI/CD: integración con GitHub Actions para despliegue automático.

- Escalabilidad: diseñado para crecer desde cientos hasta millones de operaciones.


## 🛠 Tecnologías Utilizadas

- **dbt Core**
- **Snowflake**
- **SQL**
- **SQL**
- **SQL**


### 🧠 Inspiración

Este proyecto nace como una solución de data engineering aplicada al trading, con la idea de:

- Estandarizar el flujo de datos de operaciones.

- Dar trazabilidad a cada trade.

- Construir dashboards y reportes con métricas clave para toma de decisiones.


## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
