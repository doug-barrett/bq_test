@id("65c564fc-c5f5-445e-9643-1272b68b3a73")
@nodeType("468")
WITH x as (
SELECT
     "vendor_id" AS "vendor_id",
     "vendor_name" AS "vendor_name"
FROM {{ ref('BRONZE', 'vendor') }} 
)
select * from x