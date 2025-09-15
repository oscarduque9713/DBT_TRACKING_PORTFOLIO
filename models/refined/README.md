
📊 Modelos en la Capa Silver

La capa Silver representa la etapa de transformación y enriquecimiento de datos donde aplicamos reglas de negocio, unificamos formatos y preparamos los datos para el consumo analítico.

1. POSITION_ABC_BANK

Propósito: Este modelo une la información de posiciones con el catálogo de divisas para calcular los valores en múltiples monedas.

Características:

Joins: Combina datos de posiciones con información de divisas.

Conversión de monedas: Calcula valores equivalentes en EUR y USD.

Metadatos: Añade fecha de procesamiento y información del día de la semana.

2. PSA_SLV_POSITION_TRANSFORMATION

Propósito: Este modelo calcula métricas financieras clave como ganancias/pérdidas no realizadas en diferentes divisas.

Características:

Cálculos financieros: Ganancias no realizadas y porcentajes en múltiples divisas

Redondeo: Valores consistentes con precisión de 3 decimales

Métricas temporales: Días desde la operación y información del día de la semana

🔄 Estrategia de Ejecución

Todos los modelos en la capa Silver se implementan como vistas materializadas en Snowflake, lo que garantiza:

Mejor rendimiento en consultas frecuentes

Mantenimiento automático de los datos

Actualizaciones incrementales cuando es posible

Balance entre costo y performance