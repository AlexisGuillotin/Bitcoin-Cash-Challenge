-- CREATE THE Data mart TABLE
{{ config(materialized='table', table_name='DatamartTable_transactions') }}
SELECT
    ARRAY_TO_STRING(inputs_addresses, ",") AS inputs_addresses,
    ARRAY_TO_STRING(outputs_addresses, ",") AS outputs_addresses,
    SUM(input_value) AS input_balance,
    SUM(output_value) AS output_balance,
    DATE(block_timestamp) AS block_date
FROM `bitcoin-cash-challenge381520.dbt_aguillotin.StagingTable_transactions`
WHERE is_coinbASe = FALSE
GROUP BY 
    inputs_addresses,
    outputs_addresses,
    block_date
ORDER BY 
    input_balance DESC,
    output_balance DESC,
    block_date DESC