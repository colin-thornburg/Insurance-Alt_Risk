SELECT
    DATE_TRUNC('month', start_date) AS month,
    solution_type,
    SUM(risk_amount) AS total_risk_exposure,
    AVG(risk_amount) AS avg_risk_amount,
    COUNT(DISTINCT customer_id) AS active_customers,
    SUM(annual_fee) AS total_annual_fees
FROM {{ ref('risk_solutions') }}
GROUP BY 1, 2
ORDER BY 1, 2