WITH staging_table AS (
    SELECT
        HASH(product_line) AS product_line_hk,
        *
      FROM {{ ref('stg_classic_models__product_lines')}}
)

SELECT *
  FROM staging_table