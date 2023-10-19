WITH staging_table AS (
    SELECT
        HASH(order_number) AS order_hk,
        HASH(customer_number) AS customer_hk,
        *
      FROM {{ ref('stg_classic_models__orders')}}
)

SELECT *
  FROM staging_table