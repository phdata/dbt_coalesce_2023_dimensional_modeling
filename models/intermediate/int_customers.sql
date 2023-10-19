WITH staging_table AS (
    SELECT
        HASH(customer_number) AS customer_hk,
        *
      FROM {{ ref('stg_classic_models__customers')}}
)

SELECT *
  FROM staging_table