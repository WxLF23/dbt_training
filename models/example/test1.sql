{{ 
    config ( materialized = 'view', schema = 'DBT_TRAINING' )
}}

SELECT *
FROM {{ env_var('DBT_SRC_DATABASE', 'RAW') }}.JAFFLE_SHOP.CUSTOMERS

