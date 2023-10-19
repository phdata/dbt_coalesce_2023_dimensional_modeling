WITH staging_table AS (
    SELECT
        HASH(product_code) AS product_hk,
        *
      FROM {{ ref('stg_classic_models__products')}}
)

SELECT *
  FROM staging_table