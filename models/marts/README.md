
📊 Modelos DMT MARTS

Este modelo crea un data mart dimensional optimizado para reporting y análisis de posiciones de inversión, con métricas acumuladas y agregaciones mensuales.

🎯Objetivos del Data Mart

1. Performance optimizada: Estructura pre-agregada para consultas rápidas.

2. Análisis temporal: Tendencia mensual y acumulados.

3. Multidivisa: Métricas consistentes en múltiples monedas.

4. Consistencia: Datos listos para consumo en herramientas de BI.

Transformaciones aplicadas:

- Agregación temporal: Consolidación de datos a nivel mensual

- Fecha de reporte: Último día de cada mes (DATEADD(DAY, -1, DATEADD(MONTH, 1, ...)))

- Agrupación: Por cuenta, mes, divisa y descripción de divisa

- Sumatorias: Agregación de costos y valores de posición en todas las divisas

- Redondeo: Precisión consistente de 3 decimales.

Métricas calculadas:

- Valores mensuales: Costo y posición por mes en LC, EUR y USD

- Acumulados anuales: Suma acumulada por cuenta y divisa a través del tiempo

- Window functions: Uso de OVER(PARTITION BY... ORDER BY...) para cálculos acumulativos