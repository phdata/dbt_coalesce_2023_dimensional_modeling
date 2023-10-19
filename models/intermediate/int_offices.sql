WITH staging_table AS (
    SELECT
        HASH(office_code) AS office_hk,
        *
      FROM {{ ref('stg_classic_models__offices')}}
)

SELECT *
  FROM staging_table