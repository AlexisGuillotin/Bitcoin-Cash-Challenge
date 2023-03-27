{{ config(materialized='table', table_name='DatamartTable_transactions') }}
SELECT
    SUM(input_value) AS input_balance,
    SUM(output_value) AS output_balance,
    DATE(block_timestamp) AS block_date
FROM `bitcoin-cash-challenge-381520.dbt_aguillotin.StagingTable_transactions`
WHERE is_coinbASe = FALSE
GROUP BY 
    inputs_addresses,
    outputs_addresses,
    block_date
ORDER BY 
    input_balance DESC,
    output_balance DESC,
    block_date DESC