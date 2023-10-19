WITH src_order_details AS (
    SELECT
        order_detail_hk,
        order_hk,
        product_hk,
        order_number,
        product_code,
        quantity_ordered,
        price_each,
        order_line_number
    FROM {{ ref('int_order_details')}}
),

src_orders AS (
    SELECT 
        order_hk,
        customer_hk
    FROM {{ ref('int_orders') }}
)

SELECT
    od.order_hk AS order_pk,
    product_hk AS product_pk,
    customer_hk AS customer_pk,
    order_line_number,
    product_code,
    quantity_ordered,
    price_each
FROM src_order_details od
LEFT JOIN src_orders o
  ON od.order_hk = o.order_hk
