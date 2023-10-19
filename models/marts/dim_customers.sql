WITH src_customer AS (
    SELECT
        customer_hk,
        customer_name,
        customer_last_name,
        customer_first_name,
        sales_rep_employee_number,
        credit_limit,
        phone,
        address_line1,
        address_line2,
        city,
        state,
        postal_code,
        country
    FROM {{ ref('int_customers') }}
)

SELECT DISTINCT
    customer_hk AS customer_pk,
    customer_name,
    customer_last_name,
    customer_first_name,
    sales_rep_employee_number,
    credit_limit,
    phone,
    address_line1,
    address_line2,
    city,
    state,
    postal_code,
    country
FROM src_customer
