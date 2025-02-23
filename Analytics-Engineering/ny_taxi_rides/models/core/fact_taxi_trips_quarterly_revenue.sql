{{
    config(
        materialized='table'
    )
}}

WITH quarterly_data as (

  SELECT
    service_type,
    year_quarter,
    SUM(total_amount) as quarterly_revenue
  FROM {{ ref('fact_trips') }}
  WHERE pickup_year in (2019,2020)
  GROUP BY service_type, year_quarter

)

SELECT
  service_type,
  year_quarter,
  quarterly_revenue,
  -- Calculate quarter-over-quarter growth
  (quarterly_revenue - LAG(quarterly_revenue) OVER (ORDER BY year_quarter)) / 
    LAG(quarterly_revenue) OVER (ORDER BY year_quarter) * 100 as qoq_growth_percentage
FROM quarterly_data
ORDER BY year_quarter
