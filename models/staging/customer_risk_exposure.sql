SELECT
    customer_id,
    COUNT(solution_id) AS total_solutions,
    SUM(risk_amount) AS total_risk_exposure,
    AVG(annual_fee) AS avg_annual_fee,
    MIN(start_date) AS earliest_solution_date,
    MAX(end_date) AS latest_solution_date
FROM {{ ref('risk_solutions') }}
GROUP BY 1
ORDER BY 3 DESC