{{ config(materialized='table') }}

SELECT
    solution_id,
    customer_id,
    solution_type,
    risk_amount,
    start_date,
    end_date,
    underwriter_id,
    annual_fee
FROM {{ ref('seed_risk_solutions') }}