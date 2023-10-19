WITH src_products AS (
    SELECT
        product_hk,
        quantity_in_stock,
        buy_price,
        msrp
    FROM {{ ref('int_products') }}
)

SELECT
    product_hk AS product_pk,
    quantity_in_stock,
    buy_price,
    msrp
FROM src_products
