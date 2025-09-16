
📊 Data model in layer Silver

The silver layer is the stage where data is transformed and cleaned.

Here, business rules are applied, formats are standarized and the data is prepared for analytics. 

This layer contains two views:

1. POSITION_ABC_BANK

**Source** : models from the Bronze layer.

**Purpose**: this models combine position information with currency catalog to calculate the value in multiple currencies.

**Features**:

Joins: merges position data with currency information.

Currency conversion: calculate values in EUR and USD.

Metadata: Adds process date and day of week information.

2. PSA_SLV_POSITION_TRANSFORMATION

**Source** : the view previoously, POSITION_ABC_BANK.

**Purpose**: calculate key finance metrics such as gains or losses in different currencies.

**Features**:

Financial calculates: calculate unrealized gains and percentage in various currencies.

Rounding: ensures value precision with 3 decimals.

Temporal metrics: provides information about day of week and calculates between operation date and currently date.

🔄 Execution strategy

Every model in this layer are implemented as materialized views in snowflake, this ensures:

Improved performance for frequently querys.

Automatic data maintenance.

Incremental updates where possible.

A balance between cost and performance.

The next step is the gold layer [Gold](../marts/README.md)