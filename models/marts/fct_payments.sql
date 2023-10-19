WITH src_payment AS (
    SELECT
        payment_hk,
        customer_hk,
        check_number,
        payment_date,
        amount
    FROM {{ ref('int_payments') }}
)

SELECT
    payment_hk AS payment_pk,
    customer_hk AS customer_pk,
    check_number,
    payment_date,
    amount
FROM src_payment
