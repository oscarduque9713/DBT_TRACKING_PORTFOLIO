
📊 DMT MARTS models

This model creates a data mart optimized for reporting and analysis of portfolio tracking, with measures acumulated y no acumulated.

🎯Objectives Data Mart

1. Performance optimized: Pre aggregated structure for faster queries.

2. Temporal analysis: monthly and accumulated trends.

3. Multicurrency: consistent metrics across LC, EUR and USD.

4. Consistency: Data ready to use in toools BI.

Transformations applied:

- Temporal aggregation: Consolidates data by month.

- Report date: Uses the last day of each month (DATEADD(DAY, -1, DATEADD(MONTH, 1, ...)))

- Grouping dimensions: by account, month, currency and currency description.

- Totals: aggregates cost and position in each currency.

- Rounding: ensures consistent accuracy in 3 decimals.

Calculated metrics:

- Monthly values: Cost and position by month, LC, EUR and USD.

- Accumulated totals: calculates sum by account and currency over the time.

- Window functions: Uses OVER(PARTITION BY... ORDER BY...) by acumulated calculates.

👉 With this mart, business users and BI tools can efficiently explore trends, exposures, and performance across time and multiple currencies, with data already pre-aggregated for optimal performance.