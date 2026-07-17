@id("7026264a-fcd5-4817-b7f6-f36d6ff18aed")
@nodeType("468")
WITH x AS (
SELECT
     "vendor_id" AS "vendor_id",
     "phone" AS "phone",
     "drivers" AS "drivers",
     "hq_address_details" AS "hq_address_details"
FROM {{ ref('BRONZE', 'vendor_details') }}
)
SELECT * FROM x