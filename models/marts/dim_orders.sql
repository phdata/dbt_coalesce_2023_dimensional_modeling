WITH src_order_details AS (
    SELECT
        order_hk,
        required_date,
        shipped_date,
        status,
        comments
    FROM {{ ref('int_orders') }}
)

SELECT
    order_hk AS order_pk,
    required_date,
    shipped_date,
    status,
    comments
FROM src_order_details
