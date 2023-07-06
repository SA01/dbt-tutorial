{{ config(materialized='ephemeral') }}

SELECT 
    salesorderid, 
    revisionnumber, 
    orderdate, 
    duedate, 
    shipdate, 
    status, 
    onlineorderflag, 
    purchaseordernumber,  
    subtotal, 
    taxamt, 
    freight, 
    totaldue, 
    rowguid as row_id,
    modifieddate
FROM {{ source('sales', 'salesorderheader') }}
