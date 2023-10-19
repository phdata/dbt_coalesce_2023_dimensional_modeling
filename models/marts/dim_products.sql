WITH src_products AS (
    SELECT
        product_hk,
        product_name,
        product_line,
        product_scale,
        product_vendor,
        product_description
    FROM {{ ref('int_products') }}
)

SELECT
    product_hk AS product_pk,
    product_name,
    product_line,
    product_scale,
    product_vendor,
    product_description
FROM src_products
