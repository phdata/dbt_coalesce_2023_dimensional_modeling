WITH staging_table AS (
    SELECT
        HASH(employee_number) AS employee_hk,
        *
      FROM {{ ref('stg_classic_models__employees')}}
)

SELECT *
  FROM staging_table