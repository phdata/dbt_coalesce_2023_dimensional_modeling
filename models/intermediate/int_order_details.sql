WITH staging_table AS (
    SELECT
        HASH(order_number, order_line_number) AS order_detail_hk,
        HASH(order_number) AS order_hk,
        HASH(product_code) AS product_hk,
        *
      FROM {{ ref('stg_classic_models__order_details')}}
)

SELECT *
  FROM staging_table