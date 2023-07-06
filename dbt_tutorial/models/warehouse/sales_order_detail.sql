{{ config(materialized='ephemeral') }}

SELECT 
    salesorderid, 
    salesorderdetailid, 
    carriertrackingnumber, 
    orderqty, 
    productid, 
    specialofferid, 
    unitprice, 
    unitpricediscount, 
    rowguid as row_id, 
    modifieddate
from {{ source('sales', 'salesorderdetail') }}
  