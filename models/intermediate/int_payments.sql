WITH staging_table AS (
    SELECT
        HASH(customer_number) AS customer_hk,
        HASH(check_number) AS payment_hk,
        *
      FROM {{ ref('stg_classic_models__payments')}}
)

SELECT *
  FROM staging_table