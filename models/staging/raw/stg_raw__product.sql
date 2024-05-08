with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id AS product_id,
        purchse_price AS purchase_price

    from source

)

select * from renamed
